import 'package:flutter/material.dart';
import 'package:flutter_comentator/widgets/add_checkbox.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../providers/controllers/app_controller.dart';
import '../../utils/extensions.dart';

class GameNightBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameNightController>(() => GameNightController());
  }
}

class GameNightController extends GetxController {
  final _helper = Get.find<AppController>();
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
}

class GameNightView extends GetView<GameNightController> {
  TextStyle textStyle(double size,
      [weight = FontWeight.w500, color = const Color(0xff222333)]) {
    return GoogleFonts.rubik(fontSize: size, fontWeight: weight, color: color);
  }

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
            "Night",
            style: textStyle(17),
          ),
          // actionsIconTheme: IconThemeData(color: Colors.amberAccent),
          iconTheme: IconThemeData(color: Color(0xff222333)),
        ),
        backgroundColor: Color(0xffE6E6EC),
        body: Stack(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: cs.maxHeight, minWidth: cs.maxWidth),
              child: Column(
                children: <Widget>[
                  Container(
                    width: cs.maxWidth,
                    child: Text("Mafia Main Group :", style: textStyle(16)),
                  ).pSy(y: cs.maxHeight * 0.01),
                  Container(
                    child: Row(
                      children: [
                        Container(width: cs.maxWidth * 0.1),
                        Container(
                          child: Text(
                            "GodFather :",
                            style: textStyle(16),
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(
                                horizontal: cs.maxWidth * 0.04,
                                vertical: cs.maxHeight * 0.01),
                            child: Text(
                              "Select a Player",
                              style: textStyle(13),
                            ),
                          ).flex(2),
                        ),
                      ],
                    ),
                  ).pLTRB(0, cs.maxHeight * 0.02, 0, cs.maxHeight * 0.015),
                  Container(
                    child: Row(
                      children: [
                        // Spacer(),
                        Container(
                          child: Text(
                            "Doctor :",
                            style: textStyle(16),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(
                                horizontal: cs.maxWidth * 0.04,
                                vertical: cs.maxHeight * 0.01),
                            child: Text(
                              "Select a Player",
                              style: textStyle(13),
                            ),
                          ).flex(2),
                        ),
                      ],
                    ),
                  ).pSy(y: cs.maxHeight * 0.02),
                  Container(
                    child: Row(
                      children: [
                        // Spacer(),
                        Container(
                          child: Text(
                            "Sniper(Opt) :",
                            style: textStyle(16),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(
                                horizontal: cs.maxWidth * 0.04,
                                vertical: cs.maxHeight * 0.01),
                            child: Text(
                              "Select a Player",
                              style: textStyle(13),
                            ),
                          ).flex(2),
                        ),
                      ],
                    ),
                  ).pSy(y: cs.maxHeight * 0.02),
                  Container(
                    child: Row(
                      children: [
                        // Spacer(),
                        Container(
                          child: Text(
                            "Detective :",
                            style: textStyle(16),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.symmetric(
                                horizontal: cs.maxWidth * 0.04,
                                vertical: cs.maxHeight * 0.01),
                            child: Text(
                              "Select a Player",
                              style: textStyle(13),
                            ),
                          ).flex(2),
                        ),
                      ],
                    ),
                  ).pSy(y: cs.maxHeight * 0.02),
                ],
              ).pSy(y: cs.maxHeight * 0.04, x: cs.maxWidth * 0.04),
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
                    "Submit  Night  Actions",
                    style: textStyle(16, FontWeight.w500, Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
