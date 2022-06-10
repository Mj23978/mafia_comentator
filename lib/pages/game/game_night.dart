import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/notifiers/game_provider.dart';
import '../../core/providers.dart';
import '../../models/enums.dart';
import '../../utils/helpers.dart';


class GameNightView extends ConsumerWidget {

  List<Widget> abilitiesToWidget(GameProvider controller, BuildContext context,
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
              .mafiaEngine.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "";
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
          child: Text(("mafia_side_group".tr()) + " :",
              style: textStyle(context, 16)),
        ).pSy(y: height * 0.01),
      );
      var these = abilities.entries.where((element) => element.value == 4);
      res.addAll(these.map<Widget>(
        (e) {
          var player = controller
              .mafiaEngine.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "";
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
          child: Text(("mafia_main_group".tr()) + " :",
              style: textStyle(context, 16)),
        ).pSy(y: height * 0.01),
      );
      var these = abilities.entries.where((element) => element.value == 5);
      res.addAll(these.map<Widget>(
        (e) {
          var player = controller
              .mafiaEngine.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "";
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
              .mafiaEngine.players[int.parse(e.key.split("-")[0])];
          var ability = player.role!.abilities[int.parse(e.key.split("-")[1])];
          var selectedName = "";
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
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(gameProvider);
    if (controller.mafiaEngine.currentStage != Stage.Night) {
      controller.mafiaEngine.currentStage = Stage.Night;
    }
    // controller.updatePlayers();
    // print(controller.mafiaEngine.value.players);
    // print(controller._helper.mafiaEngine.value.players);
    var abilities = controller.mafiaEngine.availableActionForStage();
    return WillPopScope(
      onWillPop: () async {
        // controller.mafiaEngine.value.currentDay += 1;
        controller.mafiaEngine.currentStage = Stage.Day;
        return true;
      },
      child: LayoutBuilder(builder: (context, cs) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              "night".tr(),
              style: textStyle(context, 17),
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
                      ...abilitiesToWidget(controller,
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
                      "submit_night_actions".tr(),
                      style: textStyle(
                        context,
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
  final String selectedName;
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
              style: textStyle(context, 16),
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
              child: Text(
                  selectedName.isNotEmpty
                      ? selectedName
                      : "select_a_player".tr(),
                  // "select_a_player".tr(),
                  style: textStyle(context, 13),
                ),
            ),
          ),
        ],
      ),
    ).pSy(y: height * 0.02);
  }
}
