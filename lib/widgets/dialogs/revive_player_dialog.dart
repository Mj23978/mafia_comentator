import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';

import '../../utils/helpers.dart';

class RevivePlayerDialog extends StatelessWidget {
  final double height;
  final double width;
  final Function0<void> dismiss;
  final Function0<void> reviveFunc;

  const RevivePlayerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.dismiss,
    required this.reviveFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.07, vertical: height * 0.07),
      decoration: BoxDecoration(
          color: Color(0xff222344), borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(
            "revive_player".tr,
            style: textStyle(
              18,
              color: Colors.green,
            ),
          ),
          Spacer(),
          Text(
            "revive_player_message".tr,
            style: textStyle(14, color: Colors.white),
          ).pSy(x: width * 0.04),
          Spacer(),
          Container(
            width: width * 0.7,
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
                      "revive".tr,
                      style: textStyle(14, color: Colors.white),
                    ).pSy(x: 8.0, y: 4.0),
                  ),
                  onPressed: reviveFunc,
                ),
                TextButton(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
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
        ],
      ),
    );
  }
}
