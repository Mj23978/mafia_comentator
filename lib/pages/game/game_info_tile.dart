import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';

import '../../utils/extensions.dart';
import '../../utils/helpers.dart';
import 'game_page.dart';

class GameInfoTile extends StatelessWidget {
  final double height;
  final double width;
  final GameController controller;

  const GameInfoTile({
    Key? key,
    required this.height,
    required this.width,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.20,
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.02,
      ),
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
                  "status_query".trParams(
                          {"count": controller.statusQuery.toString()}) ??
                      "",
                  style: textStyle(
                    14,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ).flex(3),
                Spacer(),
                Text(
                  "alive_players".trParams({
                        "count": controller.alivePlayers().toString()
                      }) ??
                      "",
                  style: textStyle(
                    14,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ).flex(3),
                Spacer(),
                Text(
                  "eleminated_players".trParams({
                        "count": controller.eleminatedPlayers().toString()
                      }) ??
                      "",
                  style: textStyle(
                    14,
                    weight: FontWeight.w400,
                    color: Colors.white,
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
                      controller.statusQuery.value++;
                    },
                    child: Icon(
                      Icons.add,
                      size: width * 0.07 > 30.0 ? 30.0 : width * 0.07,
                      color: Colors.white,
                    ),
                  ),
                  (width * 0.05).widthBox,
                  InkWell(
                    onTap: () {
                      if (controller.statusQuery.value > 0) {
                        controller.statusQuery.value--;
                      }
                    },
                    child: Icon(
                      Icons.horizontal_rule_outlined,
                      size: width * 0.07 > 30.0 ? 30.0 : width * 0.07,
                      color: Colors.white,
                    ),
                  ),
                ],
              ).flex(3),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "city_count".trParams(
                            {"count": controller.aliveCity().toString()}) ??
                        "",
                    style: textStyle(
                      13,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  15.0.widthBox,
                  Text(
                    "mafia_count".trParams(
                            {"count": controller.aliveMafia().toString()}) ??
                        "",
                    style: textStyle(
                      13,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ).flex(3),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "city_count".trParams(
                            {"count": controller.eleminatedCity().toString()}) ??
                        "",
                    style: textStyle(
                      13,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  15.0.widthBox,
                  Text(
                    "mafia_count".trParams(
                            {"count": controller.eleminatedMafia().toString()}) ??
                        "",
                    style: textStyle(
                      13,
                      weight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ).flex(3),
            ],
          ).flex(3),
          // Spacer(),
        ],
      ),
    );
  }
}
