import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/helpers.dart';

class ToNightDialog extends StatelessWidget {
  final double height;
  final double width;
  final Function0<void> dismiss;
  final Function0<void> success;

  const ToNightDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.dismiss,
    required this.success,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.07, vertical: height * 0.1),
      decoration: BoxDecoration(
        color: Color(0xff222344),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "warning".tr() + "!",
            style: textStyle(
              context,
              18,
              color: Colors.red,
            ),
          ),
          Spacer(),
          Text(
            "not_voted_message".tr(),
            style: textStyle(context, 14, color: Colors.white),
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
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "go_to_night".tr(),
                      style: textStyle(context, 14, color: Colors.white),
                    ).pSy(x: 8.0, y: 4.0),
                  ),
                  onPressed: success,
                ),
                TextButton(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      "dismiss".tr(),
                      style: textStyle(context, 14, color: Colors.white),
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
