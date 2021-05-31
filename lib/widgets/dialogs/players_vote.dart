import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';

import '../../models/player/player.dart';
import '../../utils/helpers.dart';

class PlayersVote extends StatelessWidget {
  final double height;
  final double width;
  final Rx<Map<Player, int>> players;
  final Function0<void> submitRoles;
  final Function1<Player, void> increment;
  final Function1<Player, void> decrement;
  final Function0<void> dismiss;

  PlayersVote({
    Key? key,
    required this.height,
    required this.width,
    required this.decrement,
    required this.increment,
    required this.players,
    required this.submitRoles,
    required this.dismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff222344),
        // color: Colors.blue,
      ),
      child: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              4.0.heightBox,
              Text(
                "stage_votes".tr,
                style: textStyle(
                  16,
                  color: Colors.white,
                ),
              ),
              8.0.heightBox,
              ...players.value
                  .map<String, Widget>(
                    (e, count) => MapEntry(
                      e.name,
                      Container(
                        width: width,
                        child: [
                          Flexible(
                            child: Container(
                              width: width * 0.35,
                              child: Text(
                                "${e.name}",
                                style: textStyle(
                                  12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () => increment(e),
                                  child: Icon(
                                    Icons.add,
                                    size: width * 0.1,
                                    color: Colors.white,
                                  ),
                                ),
                                (width * 0.05).widthBox,
                                Text(
                                  "$count",
                                  style: textStyle(
                                    16,
                                    color: Colors.white,
                                  ),
                                ),
                                (width * 0.05).widthBox,
                                InkWell(
                                  onTap: () => decrement(e),
                                  child: Icon(
                                    Icons.horizontal_rule_outlined,
                                    size: width * 0.1,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                            .row(
                                axisSize: MainAxisSize.max,
                                crossAlignment: CrossAxisAlignment.center,
                                alignment: MainAxisAlignment.start)
                            .pSy(x: width * 0.08),
                      ),
                    ),
                  )
                  .values
                  .toList(),
              Container(
                height: height * 0.04,
              ),
              Container(
                width: width * 0.8,
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
                          "submit_votes".tr,
                          style: textStyle(14, color: Colors.white),
                        ).pSy(x: 8.0, y: 4.0),
                      ),
                      onPressed: submitRoles,
                      // onPressed:
                    ),
                    TextButton(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "dismiss".tr,
                          style: textStyle(14, color: Colors.white),
                        ).pSy(x: 8.0, y: 4.0),
                      ),
                      onPressed: dismiss,
                    ),
                  ],
                ),
              ),
              Container(
                height: height * 0.03,
              ),
            ],
          ).pSy(x: 20.0, y: 10.0),
        ),
      ),
    );
  }
}
