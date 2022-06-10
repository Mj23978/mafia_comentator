import 'package:beamer/beamer.dart';
import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../../../core/engine/mafia_engine.dart';
import '../../../models/player/player.dart';
import '../../../utils/keys.dart';
import '../../models/ability/ability.dart';
import '../../models/enums.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/ability_pre_picker.dart';
import '../../widgets/dialogs/cant_take_action_dialog.dart';
import '../../widgets/dialogs/fast_finish_dialog.dart';
import '../../widgets/dialogs/guess_resualt_dialog.dart';
import '../../widgets/dialogs/kill_confirm_dialog.dart';
import '../../widgets/dialogs/kill_player_dialog.dart';
import '../../widgets/dialogs/note_dialog.dart';
import '../../widgets/dialogs/player_picker_dialog.dart';
import '../../widgets/dialogs/players_vote.dart';
import '../../widgets/dialogs/revive_player_dialog.dart';
import '../../widgets/dialogs/timer_dialog.dart';
import '../../widgets/dialogs/to_night_dialog.dart';
import '../engine/roles.dart';
import 'app_provider.dart';

class GameProvider extends ChangeNotifier {
  GameProvider(this._appProvider) {
    players = _appProvider.players;
    _appProvider.mafiaEngine = MafiaEngine(players: players);
    mafiaEngine = _appProvider.mafiaEngine;
  }
  final AppProvider _appProvider;

  Box conf = Hive.box(DBKeys.hive_config);
  late List<Player> players;
  var mafiaEngine = MafiaEngine(players: []);
  var markedActions = <String, Tuple3>{};
  var actionsDetails = <String, Map<String, dynamic>>{};
  var protectedPlayers = <String>[];
  var changedDirPlayers = <String>[];
  var blockedPlayers = <String>[];
  var showRoles = false;
  var doneVoting = false;
  var statusQuery = 0;
  var comentatorNotes = "";
  var comentatorNotesController = TextEditingController();
  var counter = 30.seconds;

  void updatePlayers() {
    players = _appProvider.players;
    mafiaEngine = _appProvider.mafiaEngine;
    notifyListeners();
  }

  void goDay() {
    mafiaEngine.currentStage = Stage.Day;
    print("Go To Day");
    _appProvider.players = players;
    _appProvider.mafiaEngine = mafiaEngine;
    notifyListeners();
  }

  Future<void> guessDialog(
      BuildContext context, double height, double width, bool res) async {
    return baseFlash(
      context,
      (controller) => GuessResaultDialog(
        height: height,
        width: width,
        result: res,
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
  }

  void adddf(RoleEnum role, List<String> names) {
    if (role == RoleEnum.Guardian) {
      protectedPlayers.addAll(names);
      print("Protected Players $protectedPlayers");
    } else if (role == RoleEnum.RoleBlocker) {
      protectedPlayers.addAll(names);
      print("Protected Players $protectedPlayers");
    }
    notifyListeners();
  }

  Future<void> abilityOnPress(
      Player player,
      Ability ability,
      BuildContext context,
      double height,
      double width,
      String selectedName,
      String key) async {
    var selectedNames = <String>["first", "second", "third", "fourth"];
    var playerPicker = (bool optional, List<Player> validPlayers,
        PlayerPickerType pickerType, Map<String, dynamic> details) async {
      var pPicker = (int index) => baseFlash(
            context,
            (control) => PlayerPickerDialog(
              height: height * 0.6,
              width: width * 0.7,
              onValuePicked: (t) {
                selectedNames[index] = t;
                var targetIndex = mafiaEngine.players
                    .indexWhere((element) => element.name == t);
                if (targetIndex != -1) {
                  var value = Tuple3(targetIndex, int.parse(key.split("-")[0]),
                      int.parse(key.split("-")[1]));
                  markedActions[
                          "${indexToString(index)}-${value.value2}-${value.value3}"] =
                      value;
                  print(selectedNames);
                }
                notifyListeners();
                control.dismiss();
              },
              players: validPlayers,
              restOptions: [if (optional) "none".tr()],
            ),
            boxShadows: <BoxShadow>[],
            dismissHorizental: true,
          );
      if (pickerType == PlayerPickerType.MoreThanOnePlayer) {
        baseFlash(
          context,
          (controller) => MorePlayerPickerDialog(
            height: height * 0.35,
            width: width * 0.75,
            onPress: (index) {
              pPicker(index);
              notifyListeners();
            },
            names: selectedNames,
            length: details["players_count"],
            dismiss: () {
              controller.dismiss();
            },
            submit: () {
              selectedName = selectedNames
                  .getRange(0, details["players_count"])
                  .join(", ");
              notifyListeners();
              controller.dismiss();
            },
          ),
          boxShadows: <BoxShadow>[],
          dismissHorizental: true,
        );
      } else if (pickerType == PlayerPickerType.Normal) {
        await pPicker(0);
        if (selectedNames[0] != "first") {
          selectedName = selectedNames[0];
          notifyListeners();
        }
        // guessDialog(context, height * 0.4, width * 0.5, false);
      }
    };

    mafiaEngine.selectTargetDialog(ability, player, players,
        (optional, validPlayers, pickerType, details) async {
      await baseFlash(
        context,
        (control) => CantTakeActionDialog(
          height: height * 0.4,
          width: width * 0.73,
          dismiss: () {
            control.dismiss();
          },
          forceAction: () async {
            control.dismiss();
            await playerPicker(optional, validPlayers, pickerType, details);
          },
        ),
        boxShadows: <BoxShadow>[],
      );
    }, (optional, validPlayers, pickerType, details) async {
      await playerPicker(optional, validPlayers, pickerType, details);
    });
  }

  void toggleRoles() {
    showRoles = !showRoles;
    notifyListeners();
  }

  int eleminatedPlayers() {
    return players.where((e) => e.alive == false).length;
  }

  int eleminatedCity() {
    return players
        .where((e) => (e.alive == false &&
            cityRoles.any((element) => element.name == e.roleName)))
        .length;
  }

  int eleminatedMafia() {
    return players
        .where((e) => (e.alive == false &&
            mafiaRoles.any((element) => element.name == e.roleName)))
        .length;
  }

  int alivePlayers() {
    return players.where((e) => e.alive == true).length;
  }

  int aliveCity() {
    return players.where((e) {
      return e.alive == true &&
          cityRoles.any((element) => element.name == e.roleName);
    }).length;
  }

  int aliveMafia() {
    return players
        .where((e) => (e.alive == true &&
            mafiaRoles.any((element) => element.name == e.roleName)))
        .length;
  }

  void finishGame(BuildContext context) {
    context.beamToNamed('/home', stacked: false, replaceRouteInformation: true);
    _appProvider.players = [];
    _appProvider.mafiaEngine = MafiaEngine(players: []);
    notifyListeners();
  }

  void goNight(BuildContext context) {
    mafiaEngine.currentStage = Stage.Night;
    doneVoting = false;
    print("Go To Night $doneVoting");
    print("df" + "${_appProvider.mafiaEngine.players[0]}");
    print("df3" + "${mafiaEngine.players[0].toString()}");
    notifyListeners();
    _appProvider.players = players;
    _appProvider.mafiaEngine = mafiaEngine;
    context.beamToNamed("mafia/game-night");
  }

  Future<void> fastFinish(
      BuildContext context, double width, double height) async {
    print("${mafiaEngine.currentDay}");
    print("${mafiaEngine.currentStage}");
    await baseFlash(
      context,
      (controller) => FastFinishDialog(
        height: height,
        width: width,
        dismiss: () {
          controller.dismiss();
        },
        finishGame: () {
          controller.dismiss();
          finishGame(context);
        },
      ),
      boxShadows: <BoxShadow>[],
    );
  }

  void killConfirm(
      BuildContext context, double width, double height, List<int> playersIndex,
      [inAlives = true]) async {
    var alivePlayers = players.where((element) => element.alive).toList();
    var playersName = <String>[];
    var realIndexes = <int>[];
    if (inAlives) {
      for (var index in playersIndex) {
        playersName.add(alivePlayers[index].name);
        var realIndex = players.indexOf(alivePlayers[index]);
        realIndexes.add(realIndex);
      }
    } else {
      for (var index in playersIndex) {
        playersName.add(players[index].name);
        realIndexes.add(index);
      }
    }
    notifyListeners();
    await baseFlash(
      context,
      (controller) => KillConfirmDialog(
        height: height,
        width: width,
        dismiss: () {
          controller.dismiss();
        },
        players: playersName,
        killFunc: () {
          for (var index in realIndexes) {
            players[index] =
                players[index].copyWith(alive: !players[index].alive);
            notifyListeners();
          }
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
    );
    if (doneVoting) {
      goNight(context);
    }
  }

  void revivePlayer(
      BuildContext context, double width, double height, int index) {
    baseFlash(
      context,
      (controller) => RevivePlayerDialog(
        height: height,
        width: width,
        dismiss: () {
          controller.dismiss();
        },
        reviveFunc: () {
          players[index] =
              players[index].copyWith(alive: !players[index].alive);
          notifyListeners();
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
    );
  }

  void killPlayer(BuildContext context, double width, double height,
      {List<int>? indexes}) {
    var selectedIndexes = <int>[];
    if (indexes != null) {
      for (var index in indexes) {
        if (!selectedIndexes.contains(index)) {
          selectedIndexes.add(index);
        }
      }
      notifyListeners();
    }
    baseFlash(
      context,
      (controller) => KillPlayerDialog(
        height: height,
        width: width,
        players: players,
        selectedIndexes: selectedIndexes,
        gridTileCount: gridTileCount,
        killFunc: () {
          killConfirm(
            context,
            width * 1.1,
            height * 0.8,
            selectedIndexes,
          );
          controller.dismiss();
        },
        dismiss: () {
          controller.dismiss();
        },
        indexes: indexes,
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
  }

  void stageVotes(BuildContext context, double width, double height) {
    var playersVote = <Player, int>{};
    var alivePlayers = players.where((element) => element.alive).toList();
    playersVote.addEntries(alivePlayers.map((e) => MapEntry(e, 0)));
    var minimumVote = (alivePlayers.length / 2.7).round();
    baseFlash(
      context,
      (controller) => PlayersVote(
        dismiss: () {
          controller.dismiss();
        },
        minimumVote: minimumVote,
        height: height,
        width: width,
        players: playersVote,
        submitVotes: () {
          var resIndexes = <String>[];
          playersVote.entries.forEach((e) {
            if (e.value >= minimumVote) {
              resIndexes.add(e.key.name);
            }
          });
          notifyListeners();
          stageVotesFinal(context, width, height * 0.8, resIndexes);
          controller.dismiss();
        },
        increment: (e) {
          playersVote[e] = (playersVote[e] ?? 0) + 1;
          notifyListeners();
        },
        decrement: (e) {
          if (playersVote[e]! > 0) {
            playersVote[e] = playersVote[e]! - 1;
            notifyListeners();
          }
        },
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
  }

  void stageVotesFinal(
    BuildContext context,
    double width,
    double height,
    List<String> playerIndexes,
  ) async {
    var playersVote = <Player, int>{};
    var alivePlayers = players.where((element) => element.alive).toList();
    playersVote.addEntries(alivePlayers
        .where((e) => playerIndexes.contains(e.name))
        .map((e) => MapEntry(e, 0)));
    var minimumVote = (alivePlayers.length / 2.7).round();
    await baseFlash(
      context,
      (controller) => PlayersVote(
        dismiss: () {
          controller.dismiss();
        },
        minimumVote: minimumVote,
        height: height,
        width: width,
        players: playersVote,
        submitVotes: () {
          var highestVote = 0;
          var killIndexes = <int>[];
          playersVote.entries.forEach((e) {
            if (e.value > highestVote) {
              highestVote = e.value;
            }
          });
          playersVote.entries.forEach((e) {
            if (e.value == highestVote && e.value >= minimumVote) {
              killIndexes.add(alivePlayers.indexOf(e.key));
            }
          });
          notifyListeners();
          if (killIndexes.length > 0) {
            killPlayer(context, width, height, indexes: killIndexes);
          }
          controller.dismiss();
        },
        increment: (e) {
          playersVote[e] = (playersVote[e] ?? 0) + 1;
          notifyListeners();
        },
        decrement: (e) {
          if (playersVote[e]! > 0) {
            playersVote[e] = playersVote[e]! - 1;
            notifyListeners();
          }
        },
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
    doneVoting = true;
  }

  void showTimer(BuildContext context, double width, double height) {
    baseFlash(
      context,
      (controller) => TimerDialog(
        height: height,
        width: width,
        counter: counter,
        dismiss: () {
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
  }

  void toNight(BuildContext context, double width, double height) {
    if (doneVoting) {
      doneVoting = false;
      context.beamToNamed("mafia/game-night");
      _appProvider.players = players;
      notifyListeners();
    } else {
      baseFlash(
        context,
        (controller) => ToNightDialog(
            height: height,
            width: width,
            dismiss: () {
              controller.dismiss();
            },
            success: () {
              controller.dismiss();
              goNight(context);
            }),
        boxShadows: <BoxShadow>[],
        dismissHorizental: true,
      );
    }
  }

  void noteDialog(BuildContext context, double width, double height) async {
    await baseFlash(
      context,
      (controller) => NoteDialog(
        height: height,
        width: width,
        text: comentatorNotes,
        textEditingController: comentatorNotesController,
        delete: () {
          comentatorNotesController.clear();
          comentatorNotes = '';
        },
        save: () {
          comentatorNotes = comentatorNotesController.text;
          controller.dismiss();
        },
        dismiss: () {
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
    comentatorNotesController.text = comentatorNotes;
  }
}
