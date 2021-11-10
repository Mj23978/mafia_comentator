import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';

import '../../core/notifiers/game_provider.dart';
import '../../utils/extensions.dart';
import '../../utils/helpers.dart';

class GameInfoTile extends StatelessWidget {
  final double height;
  final double width;
  final GameProvider controller;

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
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "status_query".tr(namedArgs:
                          {"count": controller.statusQuery.toString()}) ,
                  style: textStyle(
                    context,
                    14,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ).flex(3),
                Spacer(),
                Text(
                  "alive_players".tr(namedArgs:
                          {"count": controller.alivePlayers().toString()}) ,
                  style: textStyle(
                    context,
                    14,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ).flex(3),
                Spacer(),
                Text(
                  "eleminated_players".tr(namedArgs:{
                        "count": controller.eleminatedPlayers().toString()
                      }) ,
                  style: textStyle(
                    context,
                    14,
                    weight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ).flex(3),
              ],
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
                        controller.statusQuery++;
                        controller.notifyListeners();
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
                        if (controller.statusQuery > 0) {
                          controller.statusQuery--;
                          controller.notifyListeners();
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
                      "city_count".tr(namedArgs:
                              {"count": controller.aliveCity().toString()}),
                      style: textStyle(
                        context,
                        13,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    15.0.widthBox,
                    Text(
                      "mafia_count".tr(namedArgs:
                              {"count": controller.aliveMafia().toString()}),
                      style: textStyle(
                        context,
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
                      "city_count".tr(namedArgs:{
                            "count": controller.eleminatedCity().toString()
                          }),
                      style: textStyle(
                        context,
                        13,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    15.0.widthBox,
                    Text(
                      "mafia_count".tr(namedArgs: {
                            "count": controller.eleminatedMafia().toString()
                          }),
                      style: textStyle(
                        context,
                        13,
                        weight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ).flex(3),
              ],
            ).flex(3),          // Spacer(),
        ],
      ),
    );
  }
}
