import 'dart:math' show pi;

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_comentator/core/roles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';

import '../../models/player/player.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/fast_finish_dialog.dart';
import '../../widgets/dialogs/kill_confirm_dialog.dart';
import '../../widgets/dialogs/kill_player_dialog.dart';
import '../../widgets/dialogs/players_vote.dart';
import '../../widgets/dialogs/timer_dialog.dart';
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
  // final _helper = Get.find<AppController>();
  final players = Rx<List<Player>>([]);
  var showRoles = false.obs;
  var statusQuery = 0.obs;
  var counter = Rx<Duration>(30.seconds);

  @override
  @mustCallSuper
  void onInit() async {
    super.onInit();
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
  }

  void fastFinish(BuildContext context, double width, double height) {
    baseFlash(
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
    );
  }

  void killConfirm(BuildContext context, double width, double height,
      List<int> playersIndex) {
    baseFlash(
      context,
      (controller) => KillConfirmDialog(
        height: height,
        width: width,
        dismiss: () {
          controller.dismiss();
        },
        killFunc: () {
          for (var index in playersIndex) {
            players.value[index] = players.value[index]
                .copyWith(alive: !players.value[index].alive);
            players.update((val) {});
          }
        },
      ),
    );
  }

  void killPlayer(BuildContext context, double width, double height) {
    // var selctedIndexes = Rx<Map<Player, bool>>({});
    // players.value.forEach((element) {
    //   selctedIndexes.value.putIfAbsent(element, () => false);
    // });
    var selectedIndexes = Rx<List<int>>([]);
    baseFlash(
      context,
      (controller) => KillPlayerDialog(
        height: height,
        width: width,
        players: players,
        selectedIndexes: selectedIndexes,
        gridTileCount: gridTileCount,
        select: (index) {
          if (selectedIndexes.value.contains(index)) {
            selectedIndexes.value.remove(index);
          } else {
            selectedIndexes.value.add(index);
          }
          selectedIndexes.update((val) {});
        },
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
      ),
      dismissHorizental: true,
    );
  }

  void stageVotes(BuildContext context, double width, double height) {
    var playersVote = Rx<Map<Player, int>>({});
    playersVote.value.addEntries(players.value.map((e) => MapEntry(e, 0)));
    baseFlash(
      context,
      (controller) => PlayersVote(
        dismiss: () {
          controller.dismiss();
        },
        height: height,
        width: width,
        players: playersVote,
        submitRoles: () {},
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
      dismissHorizental: true,
    ); // Get.dialog();
  }

  void startCounter() {}

  Tuple2<int, int> formatDuration(Duration duration) {
    return Tuple2((duration.inSeconds / 60).floor(), duration.inSeconds % 60);
  }

  void showTimer(BuildContext context, double width, double height) {
    baseFlash(
      context,
      (controller) => TimerDialog(
        height: height,
        width: width,
        counter: counter,
        formatDuration: formatDuration,
        startCounter: () {},
        dismiss: () {
          controller.dismiss();
        },
      ),
    );
  }
}

class GameView extends GetView<GameController> {
  @override
  Widget build(BuildContext context) {
    if (Get.arguments["game_players"] != null) {
      if (controller.players.value.length == 0) {
        print(Get.arguments["game_players"]);
        controller.players.value.addAll(Get.arguments["game_players"]);
      }
      return LayoutBuilder(builder: (context, cs) {
        return Scaffold(
          appBar: AppBar(
            title: Text('day'.tr, style: textStyle(18)),
            centerTitle: true,
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Transform.rotate(
                angle: pi / 2.0,
                child: Icon(
                  Icons.compare_arrows_outlined,
                  color: Color(0xff222333),
                ),
              ),
              onPressed: () {},
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
                    return Obx(
                      () => GameListTile(
                        onCheck: (value) {},
                        value: controller.players.value[index].selected,
                        roleText: Text(
                          controller.players.value[index].roleName ?? "Null",
                          style: textStyle(15),
                        ),
                        playerText: Text(
                          controller.players.value[index].name,
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
        );
      });
    } else {
      return Container();
    }
  }
}
