import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/player.dart';
import '../../providers/controllers/app_controller.dart';
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
  final TextEditingController textEditingController = TextEditingController();
  final _players = Rx<List<Player>>([
    "Reza",
    "Jaafar",
    "Mohsen",
    "Javad",
    "Alireza"
  ].map((e) => Player(name: e, selected: false, takingAction: [])).toList());
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
    // _players.value.clear();
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

  void _handleSubmit(String text) {
    textEditingController.clear();

    if (text.length == 0 || text == '') {
      return;
    }

    Player player = Player(name: text, selected: false, takingAction: []);

    _players.value.add(player);
    _players.update((val) {});
    toggleAllSelect();
  }

  void _selectPlayer(int index, bool? value) {
    Player newPlayer = _players.value[index];
    newPlayer.selected = value ?? false;
    _players.update((val) {
      val![index] = newPlayer;
    });
    toggleAllSelect();
  }

  void _deletePlayer(int index) {
    _players.update((val) {
      val!.removeAt(index);
    });
    toggleAllSelect();
  }

  void _selectAll() {
    allSelected.toggle();
    _players.value = _players.value.map<Player>((e) {
      e.selected = allSelected.value;
      return e;
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
              "Least Amount of Players is 5 You Added ${_getSelectedPlayersLength()} Player"));
    }
  }
}

class HomeView extends GetView<HomeController> {
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
            'Players List',
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
          centerTitle: true,
        ),
        backgroundColor: Color(0xffE6E6EC),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Get.toNamed("/add-role");
            Get.toNamed("/game-night");
            // Get.offNamed("/game", arguments: {
            //   "players": <Player>[...controller._players.value, ...controller._players.value],
            // });

          },
          child: Icon(Icons.access_time_outlined),
        ),
        body: IconTheme(
          data: IconThemeData(color: Color(0xff222333)),
          child: Column(
            children: <Widget>[
              Flexible(
                child: Obx(
                  () => ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    itemBuilder: (_, int index) {
                      // controller._players.value[index],
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
                  hintTextStyle: textStyle(14, FontWeight.w400, Colors.white),
                  textStyle: textStyle(15, FontWeight.w400, Colors.white),
                  submit: controller._handleSubmit,
                  iconColor: Colors.white,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff3D79BE),
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Center(
                        child: Obx(
                          () => Text(
                            "Pick Roles :  ${controller._getSelectedPlayersLength()}",
                            style: textStyle(16, FontWeight.w500, Colors.white),
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
            ],
          ),
        ),
      );
    });
  }
}
