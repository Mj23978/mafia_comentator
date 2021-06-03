import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';

import '../../models/player/player.dart';
import '../../providers/controllers/app_controller.dart';
import '../../utils/helpers.dart';
import '../../utils/keys.dart';
import '../../widgets/home_listTile.dart';
import '../../widgets/home_textfield.dart';
import '../../widgets/show_snackbar.dart';
import '../pick_roles/pick_roles_page.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PickRolesController>(() => PickRolesController());
  }
}

class HomeController extends GetxController {
  final _helper = Get.find<AppController>();
  var playerBox = Hive.box(DBKeys.home_players);
  final _players = Rx<List<Player>>(Hive.box(DBKeys.home_players)
      .values
      .cast<String>()
      .map<Player>((e) => Player.fromJson(json.decode(e)))
      .toList());
  final TextEditingController textEditingController = TextEditingController();
  FocusNode textFocusNode = FocusNode();
  var allSelected = false.obs;

  @override
  @mustCallSuper
  void onInit() async {
    super.onInit();
  }

  @override
  void dispose() {
    print('Dispose Add player widget!');
    super.dispose();
  }

  int _getSelectedPlayersLength() {
    return _players.value
        .where((element) => element.selected == true)
        .toList()
        .length;
  }

  void toggleAllSelect() {
    if (allSelected.value !=
        _players.value.every((element) => element.selected == true)) {
      allSelected.toggle();
    }
  }

  void _handleSubmit(BuildContext context, String text) {
    if (playerBox.values
        .map<Player>((e) => Player.fromJson(json.decode(e)))
        .any((e) => e.name == text)) {
      showAppSnackbar(
        context,
        Colors.red,
        Text(
          "player_exists".trParams({"name": text}) ?? "",
          style: textStyle(15, color: Colors.white),
        ),
      );
      return;
    }
    textEditingController.clear();

    if (text.length == 0 || text == '') {
      return;
    }

    Player player = Player(name: text, selected: false, takingAction: []);
    playerBox.add(json.encode(player.toJson()));
    _players.value.add(player);

    _players.update((val) {});
    toggleAllSelect();
  }

  void _selectPlayer(int index, bool? value) {
    _players.update((val) {
      val![index] = _players.value[index].copyWith(selected: value ?? false);
    });
    toggleAllSelect();
  }

  void _deletePlayer(int index) {
    _players.update((val) {
      val!.removeAt(index);
    });
    playerBox.deleteAt(index);
    toggleAllSelect();
  }

  void _selectAll() {
    allSelected.toggle();
    _players.value = _players.value.map<Player>((e) {
      return e.copyWith(selected: allSelected.value);
    }).toList();
    _players.refresh();
  }

  _goNextPage(BuildContext context) {
    if (_getSelectedPlayersLength() >= 5) {
      _helper.players.value = _players.value;
      Get.offAll(() => PickRolesView());
    } else {
      showAppSnackbar(
        context,
        Colors.red,
        Text(
          "least_player_count".trParams(
                  {"count": _getSelectedPlayersLength().toString()}) ??
              "",
          style: textStyle(
            13,
            color: Colors.white,
            weight: FontWeight.w400,
          ),
        ),
      );
    }
  }
}

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cs) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "players_list".tr,
            style: textStyle(16),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: Obx(
            () => Checkbox(
              tristate: true,
              onChanged: (value) => controller._selectAll(),
              value: controller._players.value.length == 0
                  ? null
                  : controller.allSelected.value,
              side: BorderSide(width: 2, color: Color(0xff222333)),
              activeColor: Color(0xff3D79BE),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.settings_sharp, color: Color(0xff233344)),
              onPressed: () {
                Get.toNamed("/settings");
              },
            ).pSy(x: cs.maxWidth * 0.02)
          ],
          centerTitle: true,
        ),
        backgroundColor: Color(0xffE6E6EC),
        body: IconTheme(
          data: IconThemeData(color: Color(0xff222333)),
          child: Column(
            children: <Widget>[
              Flexible(
                child: Obx(
                  () => ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    itemBuilder: (_, int index) {
                      return HomeListTile(
                        delete: () => controller._deletePlayer(index),
                        onCheck: (value) =>
                            controller._selectPlayer(index, value),
                        text: Text(
                          controller._players.value[index].name,
                          style: textStyle(15),
                        ),
                        value: controller._players.value[index].selected,
                      ).pSy(y: cs.maxHeight * 0.01, x: cs.maxWidth * 0.015);
                    },
                    itemCount: controller._players.value.length,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff222333),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: HomeTextField(
                  controller: controller.textEditingController,
                  submit: (value) => controller._handleSubmit(context, value),
                  iconColor: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  controller._goNextPage(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff3D79BE),
                  ),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Center(
                          child: Obx(
                            () => Text(
                              "home_pick_button".trParams({
                                    "count": controller
                                        ._getSelectedPlayersLength()
                                        .toString()
                                  }) ??
                                  "",
                              style: textStyle(16,
                                  weight: FontWeight.w500, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.send_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () => controller._goNextPage(context),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
