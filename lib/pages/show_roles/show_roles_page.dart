import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import '../../core/player.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/mock/roles.dart';
import '../../providers/controllers/app_controller.dart';

class ShowRolesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowRolesController>(() => ShowRolesController());
  }
}

class ShowRolesController extends GetxController {
  final _helper = Get.find<AppController>();
  final showedPlayers = Rx<List<Player>>([]);
  var players = <Player>[];
  final roles = Rx<List<String>>([]);

  @override
  @mustCallSuper
  void onInit() async {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showPlayerRoleDialogue(
      BuildContext context, double width, double hieght, Player player) async {
    final side = cityRoleNames.any((element) => element == player.roleName);
    await showFlash(
      context: context,
      builder: (context, controller) {
        return Flash.dialog(
          controller: controller,
          enableDrag: true,
          // backgroundColor: backgroundColor,
          brightness: Brightness.light,
          boxShadows: [BoxShadow(blurRadius: 4)],
          barrierBlur: 3.0,
          barrierColor: Colors.black38,
          barrierDismissible: true,
          child: Container(
            height: hieght,
            width: width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "${player.roleName} "
                        .text
                        .size(17)
                        .color(Colors.black)
                        .bold
                        .make(),
                    "  ${side ? "City" : "Mafia"}"
                        .text
                        .size(12)
                        .color(side ? Colors.green : Colors.red)
                        .make(),
                  ],
                ).pSy(x: 10.0),
                Divider(
                  indent: 4,
                  endIndent: 4,
                  color: side ? Colors.green : Colors.red,
                ),
                TextButton(
                  onPressed: () {
                    controller.dismiss();
                  },
                  child: Center(
                    child: "Understand"
                        .text
                        .color(side ? Colors.green : Colors.red)
                        .make(),
                  ),
                ),
                10.0.heightBox,
              ],
            ).pSy(x: 10.0, y: 8.0),
          ),
        );
      },
    );
    if (showedPlayers.value.length == 0) {
      _doneDialogue(context, width * 1.2, hieght * 0.8);
    }
  }

  Future<void> _doneDialogue(
      BuildContext context, double width, double hieght) async {
    final _helper = Get.find<AppController>();
    await showFlash(
      context: context,
      builder: (context, controller) {
        // controller.onWillPop() {};
        return Flash.dialog(
          controller: controller,
          enableDrag: true,
          // backgroundColor: backgroundColor,
          brightness: Brightness.light,
          boxShadows: [BoxShadow(blurRadius: 4)],
          barrierBlur: 3.0,
          barrierColor: Colors.black38,
          barrierDismissible: true,
          child: Container(
            height: hieght,
            width: width,
            child: Column(
              children: [
                10.0.heightBox,
                Flexible(
                  child: TextButton(
                    onPressed: () {
                      controller.dismiss();
                      print(players.length);
                      _refreshRoles();
                    },
                    child: Center(
                      child: "Refresh Roles".text.color(Colors.black).make(),
                    ),
                  ),
                ),
                10.0.heightBox,
                Flexible(
                  child: TextButton(
                    onPressed: () {
                      controller.dismiss();
                      _helper.players.value = players;
                      print(players.length);
                      Get.offNamed("/game", arguments: {
                        "players": players,
                      });
                    },
                    child: Center(
                      child: "Go to Comentator Page"
                          .text
                          .color(Colors.black)
                          .make(),
                    ),
                  ),
                ),
              ],
            ).pSy(x: 10.0, y: 8.0),
          ),
        );
      },
    );
  }

  _refreshRoles() {
    roles.value.shuffle();
    showedPlayers.value.clear();
    for (var i = 0; i < roles.value.length; i++) {
      var resShow = players[i];
      resShow.roleName = roles.value[i];
      showedPlayers.value.add(resShow);
      players[i] = resShow;
    }
    showedPlayers.update((val) {});
  }
}

class ShowRolesView extends GetView<ShowRolesController> {
  int countGridTileCount(double maxWidth) {
    final tileSize = maxWidth / 135.0;
    final res = tileSize.round() == 0
        ? 1
        : (2.8 >= tileSize && tileSize >= 1.85)
            ? 2
            : tileSize;
    return res.round();
  }

  TextStyle textStyle(double size,
      [weight = FontWeight.w500, color = const Color(0xff222333)]) {
    return GoogleFonts.rubik(fontSize: size, fontWeight: weight, color: color);
  }

  @override
  Widget build(BuildContext context) {
    if (Get.arguments["players"] != null) {
      if (controller.players.length == 0) {
        controller.roles.value = Get.arguments["roles"] ?? [];
        controller.players.addAll(Get.arguments["players"]);
        controller.showedPlayers.value.addAll(Get.arguments["players"]);
        controller._refreshRoles();
      }
      return Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text(
              '${controller.showedPlayers.value.length} Players Left',
              style: textStyle(
                16,
                FontWeight.w500,
                Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.refresh, color: Colors.white),
            onPressed: () => controller._refreshRoles(),
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Color(0xffE6E6EC),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/city.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: LayoutBuilder(builder: (context, cs) {
            return Obx(
              () => GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2,
                    crossAxisCount: countGridTileCount(cs.maxWidth),
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: controller.showedPlayers.value.length,
                  itemBuilder: (context, index) {
                    // print(controller.showedPlayers.value[index].name);
                    return InkWell(
                      onLongPress: () {
                        controller._showPlayerRoleDialogue(
                            context,
                            cs.maxWidth * 0.55,
                            cs.maxHeight * 0.35,
                            controller.showedPlayers.value[index]);
                        controller.showedPlayers.value.removeAt(index);
                        controller.showedPlayers.update((val) {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          gradient: LinearGradient(
                            begin: Alignment(-0.91, -1.0),
                            end: Alignment(0.87, 1.0),
                            colors: [
                              const Color(0xbf4022a5),
                              const Color(0xff5677ad)
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            controller.showedPlayers.value[index].name,
                            style: textStyle(17, FontWeight.w500, Colors.white),
                          ),
                        ),
                      ),
                    );
                  }),
            ).pSy(x: cs.maxWidth * 0.02, y: cs.maxHeight * 0.02);
          }),
        ),
      );
    } else {
      return Container();
    }
  }
}


// decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(10.0),
  //   color: Colors.red,
  // ),
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(23.0),
  //   gradient: LinearGradient(
  //     begin: Alignment(-0.96, -0.62),
  //     end: Alignment(0.95, 0.78),
  //     colors: [
  //       const Color(0xccad79cb),
  //       const Color(0xcc3e66c4)
  //     ],
  //     stops: [0.0, 1.0],
  //   ),
  //   border: Border.all(
  //       width: 1.0, color: const Color(0xff707070)),
  // ),
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(23.0),
  //   gradient: LinearGradient(
  //     begin: Alignment(0.5, 0),
  //     end: Alignment(0.5, 1.0),
  //     colors: [
  //       const Color(0xcc70db70).withOpacity(0.8),
  //       const Color(0xc73aa819).withOpacity(0.8)
  //     ],
  //     stops: [0.0, 1.0],
  //   ),
  //   border: Border.all(
  //       width: 1.0, color: const Color(0xff707070)),
  // ),
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(23.0),
  //   gradient: LinearGradient(
  //     begin: Alignment(0.5, 0.1),
  //     end: Alignment(0.5, 0.9),
  //     colors: [
  //       const Color(0xa8d04158).withOpacity(0.7),
  //       const Color(0x9ce13b6d).withOpacity(0.65)
  //     ],
  //     stops: [0.0, 1.0],
  //   ),
  //   border: Border.all(
  //       width: 1.0, color: const Color(0xff707070)),
  // ),