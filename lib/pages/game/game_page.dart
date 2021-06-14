import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:flutter_comentator/core/mafia_engine.dart';
import 'package:flutter_comentator/models/enums.dart';
import '../../providers/controllers/app_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../core/roles.dart';
import '../../models/player/player.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/fast_finish_dialog.dart';
import '../../widgets/dialogs/kill_confirm_dialog.dart';
import '../../widgets/dialogs/kill_player_dialog.dart';
import '../../widgets/dialogs/note_dialog.dart';
import '../../widgets/dialogs/players_vote.dart';
import '../../widgets/dialogs/revive_player_dialog.dart';
import '../../widgets/dialogs/timer_dialog.dart';
import '../../widgets/dialogs/to_night_dialog.dart';
import '../../widgets/game_listTile.dart';
import 'bottom_nav.dart';
import 'game_info_tile.dart';

class GameBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameController>(() => GameController());
  }
}

class GameController extends GetxController {
  final _helper = Get.find<AppController>();
  final players = Rx<List<Player>>([]);
  var mafiaEngine = Rx<MafiaEngine>(MafiaEngine(players: []));
  var showRoles = false.obs;
  var doneVoting = false.obs;
  var statusQuery = 0.obs;
  var comentatorNotes = "".obs;
  var comentatorNotesController = TextEditingController();
  var counter = Rx<Duration>(30.seconds);

  @override
  @mustCallSuper
  void onInit() async {
    super.onInit();
    players.value = _helper.players.value;
    if (_helper.mafiaEngine.value.players.length == 0) {
      print("Initialized Engine");
      _helper.mafiaEngine.value = MafiaEngine(players: players.value);
    }
    mafiaEngine.value = _helper.mafiaEngine.value;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void toggleRoles() {
    showRoles.toggle();
  }

  int eleminatedPlayers() {
    return players.value.where((e) => e.alive == false).length;
  }

  int eleminatedCity() {
    return players.value
        .where((e) => (e.alive == false &&
            cityRoles.any((element) => element.name == e.roleName)))
        .length;
  }

  int eleminatedMafia() {
    return players.value
        .where((e) => (e.alive == false &&
            mafiaRoles.any((element) => element.name == e.roleName)))
        .length;
  }

  int alivePlayers() {
    return players.value.where((e) => e.alive == true).length;
  }

  int aliveCity() {
    return players.value.where((e) {
      return e.alive == true &&
          cityRoles.any((element) => element.name == e.roleName);
    }).length;
  }

  int aliveMafia() {
    return players.value
        .where((e) => (e.alive == true &&
            mafiaRoles.any((element) => element.name == e.roleName)))
        .length;
  }

  void finishGame() {
    Get.offNamed('/home');
      _helper.players.value = [];
    _helper.mafiaEngine.value = MafiaEngine(players: []);
  }

  void goNight() {
    mafiaEngine.value.currentStage = Stage.Night;
    doneVoting.value = false;
    print("Go To Night ${doneVoting.value}");
    print("df" + "${_helper.mafiaEngine.value.players[0]}");
    print("df3" + "${mafiaEngine.value.players[0].toString()}");
    _helper.players.value = players.value;
    _helper.mafiaEngine.value = mafiaEngine.value;
    Get.toNamed("/game-night");
  }

  Future<void> fastFinish(BuildContext context, double width, double height) async {
    print("${mafiaEngine.value.currentDay}");
    print("${mafiaEngine.value.currentStage}");
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
          finishGame();
        },
      ),
      boxShadows: <BoxShadow>[],
    );
  }

  void killConfirm(
      BuildContext context, double width, double height, List<int> playersIndex,
      [inAlives = true]) async {
    var alivePlayers = players.value.where((element) => element.alive).toList();
    var playersName = <String>[];
    var realIndexes = <int>[];
    if (inAlives) {
      for (var index in playersIndex) {
        playersName.add(alivePlayers[index].name);
        var realIndex = players.value.indexOf(alivePlayers[index]);
        realIndexes.add(realIndex);
      }
    } else {
      for (var index in playersIndex) {
        playersName.add(players.value[index].name);
        realIndexes.add(index);
      }
    }
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
            players.value[index] = players.value[index]
                .copyWith(alive: !players.value[index].alive);
            players.update((val) {});
          }
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
    );
    if (doneVoting.value) {
      goNight();
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
          players.value[index] =
              players.value[index].copyWith(alive: !players.value[index].alive);
          players.update((val) {});
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
    );
  }

  void killPlayer(BuildContext context, double width, double height,
      {List<int>? indexes}) {
    var selectedIndexes = Rx<List<int>>([]);
    if (indexes != null) {
      for (var index in indexes) {
        selectedIndexes.value.addIf(() {
          return !selectedIndexes.value.contains(index);
        }, index);
      }
      selectedIndexes.update((val) {});
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
            selectedIndexes.value,
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
    var playersVote = Rx<Map<Player, int>>({});
    var alivePlayers = players.value.where((element) => element.alive).toList();
    playersVote.value.addEntries(alivePlayers.map((e) => MapEntry(e, 0)));
    var minimumVote = (alivePlayers.length / 2.7).round().obs;
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
          playersVote.value.entries.forEach((e) {
            if (e.value >= minimumVote.value) {
              resIndexes.add(e.key.name);
            }
          });
          stageVotesFinal(context, width, height * 0.8, resIndexes);
          controller.dismiss();
        },
        increment: (e) {
          playersVote.value[e] = (playersVote.value[e] ?? 0) + 1;
          playersVote.update((val) {});
        },
        decrement: (e) {
          if (playersVote.value[e]! > 0) {
            playersVote.value[e] = playersVote.value[e]! - 1;
            playersVote.update((val) {});
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
    var playersVote = Rx<Map<Player, int>>({});
    var alivePlayers = players.value.where((element) => element.alive).toList();
    playersVote.value.addEntries(alivePlayers
        .where((e) => playerIndexes.contains(e.name))
        .map((e) => MapEntry(e, 0)));
    var minimumVote = (alivePlayers.length / 2.7).round().obs;
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
          playersVote.value.entries.forEach((e) {
            if (e.value > highestVote) {
              highestVote = e.value;
            }
          });
          playersVote.value.entries.forEach((e) {
            if (e.value == highestVote && e.value >= minimumVote.value) {
              killIndexes.add(alivePlayers.indexOf(e.key));
            }
          });
          if (killIndexes.length > 0) {
            killPlayer(context, width, height, indexes: killIndexes);
          }
          controller.dismiss();
        },
        increment: (e) {
          playersVote.value[e] = (playersVote.value[e] ?? 0) + 1;
          playersVote.update((val) {});
        },
        decrement: (e) {
          if (playersVote.value[e]! > 0) {
            playersVote.value[e] = playersVote.value[e]! - 1;
            playersVote.update((val) {});
          }
        },
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
    doneVoting.value = true;
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
    if (doneVoting.value) {
      doneVoting.value = false;
      Get.toNamed("/game-night");
      _helper.players.value = players.value;
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
              goNight();
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
          comentatorNotes.value = '';
        },
        save: () {
          comentatorNotes.value = comentatorNotesController.text;
          controller.dismiss();
        },
        dismiss: () {
          controller.dismiss();
        },
      ),
      boxShadows: <BoxShadow>[],
      dismissHorizental: true,
    );
    comentatorNotesController.text = comentatorNotes.value;
  }
}

class GameView extends GetView<GameController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cs) {
      return WillPopScope(
        onWillPop: () async {
        await controller.fastFinish(context, cs.maxWidth * 0.8, cs.maxHeight * 0.45);
        return false;
      },
        child: Scaffold(
          appBar: AppBar(
            title: Text('day'.tr, style: textStyle(18)),
            centerTitle: true,
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                Ionicons.moon,
                color: Color(0xff222333),
              ),
              onPressed: () {
                controller.toNight(
                    context, cs.maxWidth * 0.75, cs.maxHeight * 0.4);
              },
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/mask.svg",
                  color: Color(0xff222333),
                ),
                onPressed: () {
                  controller.toggleRoles();
                },
              ),
              Transform.rotate(
                angle: pi / 2.0,
                child: Icon(Icons.read_more_outlined),
              ).opacity(0.001),
            ],
          ),
          backgroundColor: Color(0xffE6E6EC),
          body: Stack(
            children: [
              Obx(
                () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: cs.maxHeight * 0.085,
                    crossAxisCount: gridTileCount(cs.maxWidth, 380),
                    mainAxisSpacing: 7.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: controller.players.value.length,
                  itemBuilder: (context, index) {
                    var player = controller.players.value[index];
                    return Obx(
                      () => GameListTile(
                        onCheck: (value) {
                          if (!player.alive) {
                            controller.revivePlayer(context, cs.maxWidth * 0.7,
                                cs.maxHeight * 0.35, index);
                          } else {
                            controller.killConfirm(context, cs.maxWidth * 0.7,
                                cs.maxHeight * 0.35, [index], false);
                          }
                        },
                        value: player.alive,
                        roleText: Text(
                          player.roleName ?? "Null",
                          style: textStyle(15),
                        ),
                        playerText: Text(
                          player.name,
                          style: textStyle(15),
                        ),
                        showRole: controller.showRoles.value,
                      ),
                    );
                  },
                ).pSy(x: 12, y: 4),
              ).pLTRB(0, 0, 0, cs.maxHeight * 0.262),
              Positioned(
                bottom: cs.maxHeight * 0.06,
                right: 0,
                child: GameInfoTile(
                  height: cs.maxHeight,
                  width: cs.maxWidth,
                  controller: controller,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GameDayBottomNav(
                  controller: controller,
                  height: cs.maxHeight,
                  width: cs.maxWidth,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
