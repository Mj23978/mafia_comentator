import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/player.dart';
import '../../core/roles.dart';
import '../../providers/controllers/app_controller.dart';
import '../../widgets/add_dialogue_pick_roles.dart';
import '../../widgets/role_details_dialogue.dart';
import '../../widgets/role_grid_item.dart';
import '../../widgets/role_number_details.dart';
import '../../widgets/show_snackbar.dart';

class PickRolesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PickRolesController>(() => PickRolesController());
    // Get.lazyPut<AppController>(() => AppController());
  }
}

class PickRolesController extends GetxController {
  final _helper = Get.find<AppController>();
  final players = Rx<List<Player>>([]);
  final selectedRoles = Rx<List<Role>>([]);

  final _cityRoles = Rx<List<Role>>(cityRoles);
  final _mafiaRoles = Rx<List<Role>>(mafiaRoles);

  int _getMafiaRolesLength() {
    return _mafiaRoles.value
        .where((element) => element.selected == true)
        .toList()
        .length;
  }

  int _getCityRolesLength() {
    return _cityRoles.value
        .where((element) => element.selected == true)
        .toList()
        .length;
  }

  @override
  @mustCallSuper
  void onInit() async {
    super.onInit();
    players.value = _helper.players.value;
    print(players);
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _selectCity(int index, bool? value) {
    _cityRoles.update((val) {
      var res = _cityRoles.value[index];
      res.selected = value ?? false;
      val![index] = res;
    });
  }

  void _selectMafia(int index, bool? value) {
    _mafiaRoles.update((val) {
      var res = _mafiaRoles.value[index];
      res.selected = value ?? false;
      val![index] = res;
    });
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

  void _openAddDialogue(BuildContext context, double width, double height) {
    var side = false.obs;
    var cityChecked = false.obs;
    baseFlash(
      context,
      (controller) => AddDialoguePickRoles(
        height: height,
        width: width,
        value: cityChecked.value,
        onChanged: (value) {
          cityChecked.value = value!;
          if (value == true) {
            side.value = true;
          }
        },
      ),
    );
  }

  void _roleDetailsDialogue(
      BuildContext context, double width, double height, bool side, Role role) {
    baseFlash(
      context,
      (controller) => RoleDetails(
        dismiss: () {
          controller.dismiss();
        },
        height: height,
        roleDes: role.description,
        roleName: role.name,
        roleSide: side ? "City" : "Mafia",
        width: width,
        color: side ? Colors.green : Colors.red,
      ),
    );
  }

  void _detailedRolesCount(BuildContext context, double width, double height) {
    if (_getCityRolesLength() + _getMafiaRolesLength() > players.value.length) {
      showAppSnackbar(
        context,
        Colors.red,
        Text(
          "You Choosen ${_getCityRolesLength() + _getMafiaRolesLength()} Roles but You Have ${players.value.length} Players",
          style: TextStyle(color: Colors.white),
        ),
      );
    } else {
      selectedRoles.value = [];
      selectedRoles.value.addAll(_cityRoles.value
          .where((element) => element.selected == true)
          .toList()
          .map<Role>((e) {
        e.count = 1;
        return e;
      }));
      selectedRoles.value.addAll(_mafiaRoles.value
          .where((element) => element.selected == true)
          .toList()
          .map<Role>((e) {
        e.count = 1;
        return e;
      }));
      print(selectedRoles.value.map((e) => e.name));
      baseFlash(
          context,
          (controller) => RoleNumberDetails(
                // textStyle: tex,
                dismiss: () {
                  controller.dismiss();
                },
                height: height,
                width: width,
                playersCount: players.value.length,
                submitRoles: () {
                  var selectedCount = selectedRoles.value
                      .fold<int>(0, (pv, e) => pv + (e.count));
                  if (selectedCount != players.value.length) {
                    showAppSnackbar(
                        context,
                        Colors.red,
                        Text(
                          "You Choosen $selectedCount Roles but You Have ${players.value.length} Players",
                          style: TextStyle(color: Colors.white),
                        ),
                        3.0.seconds);
                  } else {
                    // Check Fairness
                    List<String> roles = [];
                    selectedRoles.value.forEach((element) {
                      for (var i = 0; i < element.count; i++) {
                        roles.add(element.name);
                      }
                    });
                    roles.shuffle();
                    final List<Player> resPlayers = [];
                    for (var i = 0; i < players.value.length; i++) {
                      var res = players.value[i];
                      res.roleName = roles[i];
                      resPlayers.add(res);
                    }
                    controller.dismiss();
                    Get.offNamed("/show-roles", arguments: {
                      "players": resPlayers,
                      "roles": roles,
                    });
                  }
                },
                selectedRoles: selectedRoles,
              ),
          true); // Get.dialog();
    }
  }
}

class PickRolesView extends GetView<PickRolesController> {
  int countGridTileCount(double maxWidth) {
    final tileSize = maxWidth / 148.0;
    final res = tileSize.round() == 0
        ? 1
        : (2.60 >= tileSize && tileSize >= 1.85)
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
    return LayoutBuilder(builder: (context, cs) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '${controller.players.value.length} Players',
            style: textStyle(17, FontWeight.w500, Colors.white),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => controller._openAddDialogue(
                context, cs.maxWidth * 0.55, cs.maxHeight * 0.45),
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Color(0xffE6E6EC),
        body: Container(
          width: cs.maxWidth,
          height: cs.maxHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/city.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Container(
                      // height: cs.maxHeight * 0.085,
                      // color: Colors.green,
                      child: Center(
                        child: Obx(
                          () => Text(
                            "City Roles : ${controller._getCityRolesLength()}",
                            style: textStyle(15, FontWeight.w500, Colors.white),
                          ),
                        ),
                      ),
                    ).pLTRB(0, cs.maxHeight * 0.015, 0, cs.maxHeight * 0.015),
                  ),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Obx(
                          () => RoleGridItem(
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1.0),
                              colors: [
                                const Color(0xcc70db70).withOpacity(0.75),
                                const Color(0xc73aa819).withOpacity(0.75)
                              ],
                              stops: [0.0, 1.0],
                            ),
                            color: Colors.green.shade300,
                            textStyle:
                                textStyle(12, FontWeight.w400, Colors.white),
                            onLongPress: () {
                              controller._roleDetailsDialogue(
                                context,
                                cs.maxWidth * 0.6,
                                cs.maxHeight * 0.36,
                                true,
                                controller._cityRoles.value[index],
                              );
                            },
                            index: index,
                            onChanged: (value) =>
                                controller._selectCity(index, value),
                            value: controller._cityRoles.value[index].selected,
                            text: controller._cityRoles.value[index].name,
                          ).pSy(x: 12, y: 4),
                        );
                      },
                      childCount: controller._cityRoles.value.length,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3.5,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      crossAxisCount: countGridTileCount(cs.maxWidth),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      child: Center(
                        child: Obx(
                          () => Text(
                            "Mafia Roles : ${controller._getMafiaRolesLength()}",
                            style: textStyle(15, FontWeight.w500, Colors.white),
                          ),
                        ),
                      ),
                    ).pSy(y: cs.maxHeight * 0.023),
                  ),
                  SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Obx(
                          () => RoleGridItem(
                            color: Colors.red,
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0.1),
                              end: Alignment(0.5, 0.9),
                              colors: [
                                const Color(0xa8d04158).withOpacity(0.7),
                                const Color(0x9ce13b6d).withOpacity(0.65)
                              ],
                              stops: [0.0, 1.0],
                            ),
                            textStyle:
                                textStyle(12, FontWeight.w400, Colors.white),
                            onLongPress: () {
                              controller._roleDetailsDialogue(
                                context,
                                cs.maxWidth * 0.6,
                                cs.maxHeight * 0.36,
                                true,
                                controller._mafiaRoles.value[index],
                              );
                            },
                            index: index,
                            onChanged: (value) =>
                                controller._selectMafia(index, value),
                            value: controller._mafiaRoles.value[index].selected,
                            text: controller._mafiaRoles.value[index].name,
                          ).pSy(x: 12, y: 4),
                        );
                      },
                      childCount: controller._mafiaRoles.value.length,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3.5,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      crossAxisCount: countGridTileCount(cs.maxWidth),
                    ),
                  ),
                  SliverToBoxAdapter(child: (cs.maxHeight * 0.15).heightBox)
                ],
              ),
              Positioned(
                bottom: cs.maxHeight * 0.02,
                right: cs.maxWidth * 0.075,
                child: Container(
                  height: cs.maxHeight * 0.1,
                  width: cs.maxWidth * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    child: Text("Show Roles",
                        style: textStyle(16, FontWeight.w500, Colors.white)),
                    onPressed: () => controller._detailedRolesCount(
                      context,
                      cs.maxWidth * 0.65,
                      (cs.maxHeight *
                              0.058 *
                              (controller._getCityRolesLength() +
                                  controller._getMafiaRolesLength())) +
                          (cs.maxHeight * 0.16),
                    ),
                  ),
                ),
              ),
            ],
          ).pLTRB(0, cs.maxHeight * 0.085, 0, 0),
        ),
      );
    });
  }
}
