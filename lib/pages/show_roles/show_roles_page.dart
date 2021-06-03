import 'package:flutter/material.dart';
import 'package:flutter_comentator/widgets/dialogs/done_show_role_dialog.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:get/get.dart';

import '../../core/roles.dart';
import '../../models/player/player.dart';
import '../../providers/controllers/app_controller.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/role_details_dialog.dart';

class ShowRolesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowRolesController>(() => ShowRolesController());
  }
}

class ShowRolesController extends GetxController {
  final _helper = Get.find<AppController>();
  final players = Rx<List<Player>>([]);
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
    final side = cityRoles.any((element) => element.name == player.roleName);
    final role = side
        ? cityRoles.firstWhere((element) => element.name == player.roleName)
        : mafiaRoles.firstWhere((element) => element.name == player.roleName);
    var desLen = role.description.length;
    await baseFlash(
      context,
      (controller) => RoleDetails(
        dismiss: () {
          controller.dismiss();
        },
        height: hieght * (1 + (desLen * 0.004)),
        width: width,
        roleDes: role.description,
        roleName: role.name,
        roleSide: side ? "city".tr : "mafia".tr,
        color: side ? Colors.green : Colors.red,
      ),
      boxShadows: <BoxShadow>[],
    );
    if (players.value.every((e) => e.roleShowed == true)) {
      _doneDialogue(context, width * 1.1, hieght * 1.4);
    }
  }

  Future<void> _doneDialogue(
      BuildContext context, double width, double height) async {
    final _helper = Get.find<AppController>();
    await baseFlash(
        context,
        (controller) => DoneShowRolesDialog(
              height: height,
              width: width,
              goComentatorPage: () {
                controller.dismiss();
                var resPlayers = players.value.map((e) {
                  final side =
                      cityRoles.any((element) => element.name == e.roleName);
                  final role = side
                      ? cityRoles
                          .firstWhere((element) => element.name == e.roleName)
                      : mafiaRoles
                          .firstWhere((element) => element.name == e.roleName);
                  return e.copyWith(role: role);
                }).toList();
                _helper.players.value = resPlayers;
                Get.offNamed("/game", arguments: {
                  "game_players": resPlayers,
                });
              },
              refreshRoles: () {
                controller.dismiss();
                _refreshRoles();
              },
            ),
        boxShadows: <BoxShadow>[]);
  }

  _refreshRoles() {
    roles.value.shuffle();
    for (var i = 0; i < roles.value.length; i++) {
      var player = players.value[i];
      players.value[i] =
          player.copyWith(roleName: roles.value[i], roleShowed: false);
    }
    players.update((val) {});
  }

  int _getShowedPlayers() {
    return players.value.where((element) => !element.roleShowed).length;
  }
}

class ShowRolesView extends GetView<ShowRolesController> {
  Widget _playerTile(String name) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        gradient: LinearGradient(
          begin: Alignment(-0.91, -1.0),
          end: Alignment(0.87, 1.0),
          colors: [const Color(0xbf4022a5), const Color(0xff5677ad)],
          stops: [0.0, 1.0],
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: textStyle(17, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Get.arguments["show_players"] != null) {
      if (controller.players.value.length == 0) {
        controller.roles.value = Get.arguments["show_roles"] ?? [];
        controller.players.value.addAll(Get.arguments["show_players"]);
        controller._refreshRoles();
      }
      return Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text(
              'left_players'.trParams(
                      {"count": controller._getShowedPlayers().toString()}) ??
                  "",
              style: textStyle(
                16,
                color: Colors.white,
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
                    crossAxisCount: gridTileCount(cs.maxWidth, 135),
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: controller.players.value.length,
                  itemBuilder: (context, index) {
                    var player = controller.players.value[index];
                    return player.roleShowed
                        ? Container()
                        : InkWell(
                            onLongPress: () {
                              controller._showPlayerRoleDialogue(
                                  context,
                                  cs.maxWidth * 0.55,
                                  cs.maxHeight * 0.29,
                                  player);
                              controller.players.update((val) {
                                val![index] =
                                    val[index].copyWith(roleShowed: true);
                              });
                            },
                            child: _playerTile(player.name));
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