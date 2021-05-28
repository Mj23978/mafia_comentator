import 'dart:math' show pi;

import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/player.dart';
import '../../providers/controllers/app_controller.dart';
import '../../utils/extensions.dart';
import '../../widgets/game_listTile.dart';

class GameBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameController>(() => GameController());
  }
}

class GameController extends GetxController {
  final _helper = Get.find<AppController>();
  final players = Rx<List<Player>>([]);
  var showRoles = false.obs;
  var vaziat = 0.obs;
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

  void _showRoles() {
    showRoles.toggle();
  }

  baseFlash(BuildContext context, Function1<FlashController, Widget> builder,
      [bool dismissHorizental = false]) {
    showFlash(
      context: context,
      builder: (context, controller) {
        return Flash.dialog(
          controller: controller,
          backgroundColor: Colors.transparent,
          enableDrag: true,
          // backgroundColor: backgroundColor,
          brightness: Brightness.light,
          // boxShadows: [BoxShadow(blurRadius: 4)],
          horizontalDismissDirection:
              dismissHorizental ? HorizontalDismissDirection.horizontal : null,
          barrierBlur: 3.0,
          barrierColor: Colors.black38,
          barrierDismissible: true,
          child: builder(controller),
        );
      },
    );
  }

  int _eleminatedPlayers() {
    return 0;
  }

  int _alivePlayers() {
    return 0;
  }

  int countGridTileCount(double maxWidth, [double size = 380.0]) {
    final tileSize = maxWidth / size;
    final res = tileSize.round() == 0
        ? 1
        : (2.1 >= tileSize && tileSize >= 1.85)
            ? 2
            : tileSize;
    return res.round();
  }

  void _finishGame() {}

  void _fastFinish(BuildContext context, double width, double height) {
    baseFlash(
      context,
      (controller) => Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.07, vertical: height * 0.1),
        decoration: BoxDecoration(
            color: Color(0xff222344), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "Warning !",
              style: GoogleFonts.rubik(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
            Spacer(),
            Text(
              "Are You Sure That You Wanna Finish This Game ?",
              style: GoogleFonts.rubik(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ).pSy(x: width * 0.04),
            Spacer(),
            Container(
              width: width * 0.7,
              height: height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Finish",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      _finishGame();
                    },
                    // onPressed:
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Dismiss",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      controller.dismiss();
                    },
                    // onPressed: () {
                    //   controller.dismiss();
                    // },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _killConfirm(BuildContext context, double width, double height,
      List<int> playersIndex) {
    baseFlash(
      context,
      (controller) => Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.07, vertical: height * 0.07),
        decoration: BoxDecoration(
            color: Color(0xff222344), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              "Kill Player",
              style: GoogleFonts.rubik(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
            Spacer(),
            Text(
              "Are You Sure That You Wanna Kill These Player(s) ?",
              style: GoogleFonts.rubik(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ).pSy(x: width * 0.04),
            Spacer(),
            Container(
              width: width * 0.7,
              height: height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Kill",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      for (var index in playersIndex) {
                        players.value[index].alive =
                            !players.value[index].alive;
                        players.update((val) {});
                      }
                    },
                    // onPressed:
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Dismiss",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      controller.dismiss();
                    },
                    // onPressed: () {
                    //   controller.dismiss();
                    // },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _killPlayer(BuildContext context, double width, double height) {
    var selcted = false.obs;
    var selctedIndexes = Rx<List<int>>([]);

    baseFlash(
        context,
        (controller) => Container(
              width: width,
              height: height,
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.07, vertical: height * 0.07),
              decoration: BoxDecoration(
                  color: Color(0xff222344),
                  borderRadius: BorderRadius.circular(20)),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Center(
                      child: Text(
                        "Kill Player",
                        style: GoogleFonts.rubik(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: (height * 0.1).heightBox),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Obx(
                          () => InkWell(
                            onTap: () {
                              selcted.toggle();
                              selcted.update((val) {});
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selcted.value
                                    ? Colors.red
                                    : Colors.transparent,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.01,
                                  vertical: height * 0.01),
                              child: Align(
                                alignment: Alignment(0, 0),
                                child: Text(
                                  players.value[index].name,
                                  style: GoogleFonts.rubik(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount: players.value.length,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: countGridTileCount(width, width * 0.3),
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                    ),
                  ),
                  SliverToBoxAdapter(child: (height * 0.1).heightBox),
                  SliverToBoxAdapter(
                    child: Container(
                      width: width * 0.7,
                      height: height * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Kill",
                                style: GoogleFonts.rubik(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ).pSy(x: 8.0, y: 4.0),
                            ),
                            onPressed: () {
                              _killConfirm(context, width * 1.1, height * 0.8,
                                  selctedIndexes.value);
                              controller.dismiss();
                            },
                            // onPressed:
                          ),
                          TextButton(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Dismiss",
                                style: GoogleFonts.rubik(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ).pSy(x: 8.0, y: 4.0),
                            ),
                            onPressed: () {
                              controller.dismiss();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        true);
  }

  void _startCounter() {}

  Tuple2<int, int> formatDuration(Duration duration) {
    return Tuple2((duration.inSeconds / 60).floor(), duration.inSeconds % 60);
  }

  void _showTimer(BuildContext context, double width, double height) {
    baseFlash(
      context,
      (controller) => Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.07, vertical: height * 0.1),
        decoration: BoxDecoration(
          color: Color(0xff222344),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              "Time Tracker",
              style: GoogleFonts.rubik(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Spacer(),
            Obx(() {
              var counterRes = formatDuration(counter.value);
              var counterMin = counterRes.value1 < 10
                  ? "0${counterRes.value1}"
                  : counterRes.value1.toString();
              var counterSec = counterRes.value2 < 10
                  ? "0${counterRes.value2}"
                  : counterRes.value2.toString();
              return Text(
                "$counterMin:$counterSec",
                style: GoogleFonts.rubik(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ).pSy(x: width * 0.04);
            }),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    counter.value = counter.value + 5.seconds;
                    counter.update((val) {});
                    // print("Increment Vaziat ${controller.vaziat}");
                  },
                  child: Icon(
                    Icons.add,
                    size: width * 0.2 > 30.0 ? 30.0 : width * 0.2,
                    color: Colors.white,
                  ),
                ),
                (width * 0.15).widthBox,
                InkWell(
                  onTap: () {
                    if (counter.value >= 5.seconds) {
                      counter.value = counter.value - 5.seconds;
                      counter.update((val) {});
                    }
                  },
                  child: Icon(
                    Icons.horizontal_rule_outlined,
                    size: width * 0.2 > 30.0 ? 30.0 : width * 0.2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            (height * 0.02).heightBox,
            Container(
              width: width * 0.7,
              height: height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Start",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      _startCounter();
                    },
                    // onPressed:
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.rubik(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      controller.dismiss();
                    },
                    // onPressed: () {
                    //   controller.dismiss();
                    // },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameView extends GetView<GameController> {
  TextStyle textStyle(double size,
      [weight = FontWeight.w500, color = const Color(0xff222333)]) {
    return GoogleFonts.rubik(fontSize: size, fontWeight: weight, color: color);
  }

  @override
  Widget build(BuildContext context) {
    if (Get.arguments["players"] != null) {
      if (controller.players.value.length == 0) {
        print(Get.arguments["players"]);
        controller.players.value.addAll(Get.arguments["players"]);
      }
      return LayoutBuilder(builder: (context, cs) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Day', style: textStyle(18)),
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
                    controller._showRoles();
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
                      crossAxisCount:
                          controller.countGridTileCount(cs.maxWidth),
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
                  child: Container(
                    height: cs.maxHeight * 0.20,
                    width: cs.maxWidth,
                    padding: EdgeInsets.symmetric(
                        horizontal: cs.maxWidth * 0.04,
                        vertical: cs.maxHeight * 0.02),
                    decoration: BoxDecoration(
                        // color: Colors.blue,
                        color: Color(0xff222333)
                        // borderRadius: BorderRadius.circular(20),
                        ),
                    child: Row(
                      children: [
                        // Spacer(),
                        Obx(
                          () => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Status Query : ${controller.vaziat}",
                                style: textStyle(
                                  14,
                                  FontWeight.w400,
                                  Colors.white,
                                ),
                              ).flex(3),
                              Spacer(),
                              Text(
                                "Eleminated Players : ${controller._eleminatedPlayers()}",
                                style: textStyle(
                                  14,
                                  FontWeight.w400,
                                  Colors.white,
                                ),
                              ).flex(3),
                              Spacer(),
                              Text(
                                "Alive Players : ${controller._alivePlayers()}",
                                style: textStyle(
                                  14,
                                  FontWeight.w400,
                                  Colors.white,
                                ),
                              ).flex(3),
                            ],
                          ),
                        ),
                        Spacer(flex: 2),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    controller.vaziat.value++;
                                    print(
                                        "Increment Vaziat ${controller.vaziat}");
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: cs.maxWidth * 0.07 > 30.0
                                        ? 30.0
                                        : cs.maxWidth * 0.07,
                                    color: Colors.white,
                                  ),
                                ),
                                (cs.maxWidth * 0.05).widthBox,
                                InkWell(
                                  onTap: () {
                                    if (controller.vaziat.value > 0) {
                                      controller.vaziat.value--;
                                    }
                                    print(
                                        "Decrement Vaziat ${controller.vaziat}");
                                  },
                                  child: Icon(
                                    Icons.horizontal_rule_outlined,
                                    size: cs.maxWidth * 0.07 > 30.0
                                        ? 30.0
                                        : cs.maxWidth * 0.07,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ).flex(3),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("City : 0",
                                    style: textStyle(
                                        13, FontWeight.w400, Colors.white)),
                                15.0.widthBox,
                                Text("Mafia : 0",
                                    style: textStyle(
                                        13, FontWeight.w400, Colors.white)),
                              ],
                            ).flex(3),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("City : 0",
                                    style: textStyle(
                                        13, FontWeight.w400, Colors.white)),
                                15.0.widthBox,
                                Text("Mafia : 0",
                                    style: textStyle(
                                        13, FontWeight.w400, Colors.white)),
                              ],
                            ).flex(3),
                          ],
                        ).flex(3),
                        // Spacer(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: cs.maxHeight * 0.07,
                    width: cs.maxWidth,
                    decoration: BoxDecoration(color: Color(0xff222333)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            "assets/icons/note.svg",
                            width: cs.maxWidth * 0.06,
                          ),
                        ).flex(1),
                        TextButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            "assets/icons/hand.svg",
                            width: cs.maxWidth * 0.05,
                          ),
                        ).flex(1),
                        TextButton(
                          onPressed: () {
                            controller._killPlayer(
                              context,
                              cs.maxWidth * 0.7,
                              cs.maxHeight * 0.25 +
                                  (cs.maxHeight *
                                      0.08 *
                                      (controller.players.value.length / 3)),
                            );
                          },
                          child: SvgPicture.asset(
                            "assets/icons/gun.svg",
                            color: Colors.white,
                            width: cs.maxWidth * 0.07,
                          ),
                        ).flex(1),
                        TextButton(
                          onPressed: () {
                            controller._showTimer(context, cs.maxWidth * 0.65,
                                cs.maxHeight * 0.45);
                          },
                          child: SvgPicture.asset(
                            "assets/icons/clock.svg",
                            width: cs.maxWidth * 0.05,
                          ),
                        ).flex(1),
                        TextButton(
                          onPressed: () {
                            controller._fastFinish(context, cs.maxWidth * 0.75,
                                cs.maxHeight * 0.3);
                          },
                          child: SvgPicture.asset(
                            "assets/icons/ff.svg",
                            color: Colors.white,
                            width: cs.maxWidth * 0.05,
                          ),
                        ).flex(1),
                      ],
                    ),
                  ),
                ),
              ],
            ));
      });
    } else {
      return Container();
    }
  }
}
