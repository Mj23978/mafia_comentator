import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

import '../../providers/controllers/app_controller.dart';
import '../../utils/extensions.dart';
import '../../utils/helpers.dart';
import '../../widgets/add_checkbox.dart';

class AddRoleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddRoleController>(() => AddRoleController());
  }
}

class AddRoleController extends GetxController {
  final _helper = Get.find<AppController>();
  FocusNode textFocusNode = FocusNode();
  final roleNameTextEditing = TextEditingController();
  final roleDesTextEditing = TextEditingController();

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

  void _submitRoleName() {}

  void _submitRoleDescription() {}
}

class AddRoleView extends GetView<AddRoleController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cs) {
      return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xffE6E6EC),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Add Role",
            style: textStyle(17),
          ),
          // actionsIconTheme: IconThemeData(color: Colors.amberAccent),
          iconTheme: IconThemeData(color: Color(0xff222333)),
        ),
        backgroundColor: Color(0xffE6E6EC),
        body: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: cs.maxHeight, minWidth: cs.maxWidth),
          child: Container(
            decoration: BoxDecoration(),
            child: Column(
              children: <Widget>[
                Container(
                  width: cs.maxWidth,
                  child: Text("Side :", style: textStyle(16)),
                ).pSy(y: cs.maxHeight * 0.00),
                Container(
                  child: Row(
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AddCheckBox(
                            value: false,
                            name: "City",
                            onSubmit: (v) {},
                          ).flex(3),
                          Spacer(),
                          AddCheckBox(
                            value: false,
                            name: "Mafia",
                            onSubmit: (v) {},
                          ).flex(3),
                          // Spacer(),
                        ],
                      ).flex(4)
                    ],
                  ),
                ).pLTRB(0, 0, 0, cs.maxHeight * 0.015),
                Container(
                  width: cs.maxWidth,
                  child: Text("Role Name :", style: textStyle(16)),
                ).pLTRB(0, 0, 0, cs.maxHeight * 0.01),
                Container(
                  child: TextField(
                    controller: controller.roleNameTextEditing,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Role Name"),
                  ),
                ).pSy(x: cs.maxWidth * 0.02, y: cs.maxHeight * 0.02),
                if (true)
                  Container(
                    // color: Color(0xffffffff),
                    // height: cs.maxHeight * 0.07,
                    child: Row(
                      children: [
                        Container(
                            child: Text(
                          "Wake Group :",
                          style: textStyle(16),
                        )).flex(2),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Spacer(),
                            AddCheckBox(
                              value: false,
                              name: "Main",
                              onSubmit: (v) {},
                            ).flex(5),
                            Spacer(),
                            AddCheckBox(
                              value: false,
                              name: "Side",
                              onSubmit: (v) {},
                            ).flex(5),
                            Spacer(),
                            AddCheckBox(
                              value: false,
                              name: "Solo",
                              onSubmit: (v) {},
                            ).flex(5),
                          ],
                        ).flex(5)
                      ],
                    ).pSy(y: cs.maxHeight * 0.015),
                  ),
                Container(
                  child: Row(
                    children: [
                      Container(
                          child: Text(
                        "Abilities :",
                        style: textStyle(16),
                      )),
                      Spacer(),
                      AddCheckBox(
                        value: false,
                        name: "",
                        onSubmit: (v) {},
                        withText: false,
                      ).pSy(x: cs.maxWidth * 0.025),
                    ],
                  ).pSy(y: cs.maxHeight * 0.015),
                ),
                if (true)
                  Container(
                    height: cs.maxHeight * 0.1 * 2,
                    child: GridView(
                      // reverse: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 30,
                        // mainAxisExtent: value,
                        // childAspectRatio: 3.5,
                        crossAxisCount: gridTileCount(cs.maxWidth),
                        mainAxisSpacing: 5.0,
                        crossAxisSpacing: 5.0,
                      ),
                      children: [
                        AddCheckBox(
                          value: false,
                          name: "Heal",
                          onSubmit: (v) {},
                          alignment: MainAxisAlignment.start,
                        ),
                        AddCheckBox(
                            value: false,
                            name: "Kill",
                            onSubmit: (v) {},
                            alignment: MainAxisAlignment.start),
                        AddCheckBox(
                            value: false,
                            name: "Reserve",
                            onSubmit: (v) {},
                            alignment: MainAxisAlignment.start),
                        AddCheckBox(
                            value: false,
                            name: "Convert",
                            onSubmit: (v) {},
                            alignment: MainAxisAlignment.start),
                        AddCheckBox(
                            value: false,
                            name: "Ask",
                            onSubmit: (v) {},
                            alignment: MainAxisAlignment.start),
                      ],
                    ),
                  ),
              ],
            ),
          ).pSy(y: cs.maxHeight * 0.04, x: cs.maxWidth * 0.04),
        ),
      );
    });
  }
}
