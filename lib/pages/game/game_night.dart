import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_comentator/widgets/dialogs/guess_resualt_dialog.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import '../../core/mafia_engine.dart';
import '../../models/ability/ability.dart';
import '../../models/enums.dart';
import '../../models/player/player.dart';
import '../../providers/controllers/app_controller.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/ability_pre_picker.dart';
import '../../widgets/dialogs/cant_take_action_dialog.dart';
import '../../widgets/dialogs/player_picker_dialog.dart';

class GameNightBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameNightController>(() => GameNightController());
  }
}

class GameNightController extends GetxController {
  final _helper = Get.find<AppController>();
  final players = Rx<List<Player>>([]);
  final mafiaEngine = Rx<MafiaEngine>(MafiaEngine(players: []));
  final markedActions = Rx<Map<String, Tuple3>>({});
  final actionsDetails = Rx<Map<String, Map<String, dynamic>>>({});
  final protectedPlayers = Rx<List<String>>([]);
  final changedDirPlayers = Rx<List<String>>([]);
  final blockedPlayers = Rx<List<String>>([]);

  @override
  @mustCallSuper
  void onInit() async {
    super.onInit();
    players.value = _helper.players.value;
    mafiaEngine.value = _helper.mafiaEngine.value;
  }

  void updatePlayers() {
    players.value = _helper.players.value;
    mafiaEngine.value = _helper.mafiaEngine.value;
  }

  @override
  void dispose() {
    print('Dispose Add player widget!');
    super.dispose();
  }

  void goDay() {
    mafiaEngine.value.currentStage = Stage.Day;
    print("Go To Day");
    _helper.players.value = players.value;
    _helper.mafiaEngine.value = mafiaEngine.value;
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
      protectedPlayers.value.addAll(names);
      print("Protected Players $protectedPlayers");
    } else if (role == RoleEnum.RoleBlocker) {
      protectedPlayers.value.addAll(names);
      print("Protected Players $protectedPlayers");
    } 
  }

  Future<void> abilityOnPress(
      Player player,
      Ability ability,
      BuildContext context,
      double height,
      double width,
      Rx<String> selectedName,
      String key) async {
    var selectedNames =
        Rx<List<String>>(["first", "second", "third", "fourth"]);
    var playerPicker = (bool optional, List<Player> validPlayers,
        PlayerPickerType pickerType, Map<String, dynamic> details) async {
      var pPicker = (int index) => baseFlash(
            context,
            (control) => PlayerPickerDialog(
              height: height * 0.6,
              width: width * 0.7,
              onValuePicked: (t) {
                selectedNames.value[index] = t;
                selectedNames.update((val) {});
                var targetIndex = mafiaEngine.value.players
                    .indexWhere((element) => element.name == t);
                if (targetIndex != -1) {
                  var value = Tuple3(targetIndex, int.parse(key.split("-")[0]),
                      int.parse(key.split("-")[1]));
                  markedActions.value[
                          "${indexToString(index)}-${value.value2}-${value.value3}"] =
                      value;
                  print(selectedNames);
                }
                control.dismiss();
              },
              players: validPlayers,
              restOptions: [if (optional) "none".tr],
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
            },
            names: selectedNames,
            length: details["players_count"],
            dismiss: () {
              controller.dismiss();
            },
            submit: () {
              selectedName.value = selectedNames.value
                  .getRange(0, details["players_count"])
                  .join(", ");
              selectedName.update((val) {});
              controller.dismiss();
            },
          ),
          boxShadows: <BoxShadow>[],
          dismissHorizental: true,
        );
      } else if (pickerType == PlayerPickerType.Normal) {
        await pPicker(0);
        if (selectedNames.value[0] != "first") {
          selectedName.value = selectedNames.value[0];
          selectedName.update((val) {});
        }
        // guessDialog(context, height * 0.4, width * 0.5, false);
      }
    };



    mafiaEngine.value.selectTargetDialog(ability, player, players.value,
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
}

class GameNightView extends GetView<GameNightController> {
  List<Widget> abilitiesToWidget(BuildContext context,
      Map<String, int> abilities, double height, double width) {
    var wakePriority = abilities.values.toList();
    var beforeMafiaWake = wakePriority.where((element) => element < 4).toList();
    var afterMafiaWake = wakePriority.where((element) => element > 5).toList();
    beforeMafiaWake.sort();
    afterMafiaWake.sort();
    var res = <Widget>[];

    beforeMafiaWake.toSet().forEach((el) {
      var these = abilities.entries.where((element) => element.value == el);
      res.addAll(these.map<Widget>(
        (e) {
          var player = controller
              .mafiaEngine.value.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "".obs;
          return PlayerAbilityTile(
            name: "${player.roleName}(${player.name})",
            selectedName: selectedName,
            height: height,
            onPress: () async {
              await controller.abilityOnPress(
                  player, ability, context, height, width, selectedName, e.key);
            },
            width: width,
          );
        },
      ));
    });
    if (wakePriority.contains(4)) {
      res.add(
        Container(
          width: width,
          child: Text(("mafia_side_group".tr) + " :", style: textStyle(16)),
        ).pSy(y: height * 0.01),
      );
      var these = abilities.entries.where((element) => element.value == 4);
      res.addAll(these.map<Widget>(
        (e) {
          var player = controller
              .mafiaEngine.value.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "".obs;
          return PlayerAbilityTile(
            name: "${player.roleName}(${player.name})",
            selectedName: selectedName,
            height: height,
            onPress: () async {
              await controller.abilityOnPress(
                  player, ability, context, height, width, selectedName, e.key);
            },
            width: width,
            nested: true,
          );
        },
      ));
    }
    if (wakePriority.contains(5)) {
      res.add(
        Container(
          width: width,
          child: Text(("mafia_main_group".tr) + " :", style: textStyle(16)),
        ).pSy(y: height * 0.01),
      );
      var these = abilities.entries.where((element) => element.value == 5);
      res.addAll(these.map<Widget>(
        (e) {
          var player = controller
              .mafiaEngine.value.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "".obs;
          return PlayerAbilityTile(
            name: "${player.roleName}(${player.name})",
            height: height,
            selectedName: selectedName,
            onPress: () async {
              await controller.abilityOnPress(
                  player, ability, context, height, width, selectedName, e.key);
            },
            width: width,
            nested: true,
          );
        },
      ));
    }
    afterMafiaWake.toSet().forEach((el) {
      var these = abilities.entries.where((element) => element.value == el);
      res.addAll(these.map<Widget>(
        (e) {
          var player = controller
              .mafiaEngine.value.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "".obs;
          return PlayerAbilityTile(
            name: "${player.roleName}(${player.name})",
            selectedName: selectedName,
            height: height,
            onPress: () async {
              await controller.abilityOnPress(
                  player, ability, context, height, width, selectedName, e.key);
            },
            width: width,
          );
        },
      ));
    });
    return res;
  }

  @override
  Widget build(BuildContext context) {
    if (controller.mafiaEngine.value.currentStage != Stage.Night) {
      controller.mafiaEngine.value.currentStage = Stage.Night;
    }
    // controller.updatePlayers();
    // print(controller.mafiaEngine.value.players);
    // print(controller._helper.mafiaEngine.value.players);
    var abilities = controller.mafiaEngine.value.availableActionForStage();
    return WillPopScope(
      onWillPop: () async {
        // controller.mafiaEngine.value.currentDay += 1;
        controller.mafiaEngine.value.currentStage = Stage.Day;
        return true;
      },
      child: LayoutBuilder(builder: (context, cs) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              "night".tr,
              style: textStyle(17),
            ),
            iconTheme: IconThemeData(color: Color(0xff222333)),
          ),
          backgroundColor: Color(0xffE6E6EC),
          body: Stack(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: cs.maxHeight, minWidth: cs.maxWidth),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ...abilitiesToWidget(
                          context, abilities.value1, cs.maxHeight, cs.maxWidth),
                      Container(
                        height: cs.maxHeight * 0.12,
                      ),
                    ],
                  ).pSy(y: cs.maxHeight * 0.04, x: cs.maxWidth * 0.04),
                ),
              ),
              Positioned(
                bottom: cs.maxHeight * 0.03,
                right: cs.maxWidth * 0.125,
                child: Container(
                  height: cs.maxHeight * 0.1,
                  width: cs.maxWidth * 0.75,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    child: Text(
                      "submit_night_actions".tr,
                      style: textStyle(
                        16,
                        weight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print(controller.markedActions);
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class PlayerAbilityTile extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final bool nested;
  final Rx<String> selectedName;
  final void Function() onPress;

  const PlayerAbilityTile({
    Key? key,
    required this.name,
    required this.height,
    required this.onPress,
    required this.width,
    required this.selectedName,
    this.nested = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (nested) Container(width: width * 0.1),
          Container(
            child: Text(
              name + " :",
              style: textStyle(16),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          TextButton(
            onPressed: onPress,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.01),
              child: Obx(
                () => Text(
                  selectedName.value.isNotEmpty
                      ? selectedName.value
                      : "select_a_player".tr,
                  // "select_a_player".tr,
                  style: textStyle(13),
                ),
              ),
            ),
          ),
        ],
      ),
    ).pSy(y: height * 0.02);
  }
}
