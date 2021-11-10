import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/helpers.dart';
import '../../utils/extensions.dart';

class RoleDetails extends StatelessWidget {
  final double height;
  final double width;
  final String roleName;
  final String roleDes;
  final String roleSide;
  final Color color;
  final void Function() dismiss;

  const RoleDetails({
    Key? key,
    required this.height,
    required this.width,
    required this.roleName,
    required this.roleSide,
    required this.roleDes,
    required this.dismiss,
    this.color = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff222344),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(roleName,
                  style: textStyle(context, 16, color: Colors.white)),
              (width * 0.07).widthBox,
              Text(roleSide,
                  style: textStyle(context, 12,
                      color: Colors.white, weight: FontWeight.w400)),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: color,
                ),
                onPressed: () {},
              )
            ],
          ).pSy(x: 10.0).flex(3),
          Divider(
            indent: 4,
            endIndent: 4,
            color: color,
          ),
          Text(roleDes,
                  style: textStyle(context, 14,
                      color: Colors.white, weight: FontWeight.w400))
              .pSy(x: 15.0, y: 4.0)
              .flex(5 + (roleDes.length / 40).round()),
          Spacer(),
          TextButton(
            onPressed: dismiss,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "understand".tr(),
                  style: textStyle(context, 14, color: Colors.white),
                ).pSy(y: 3),
              ),
            ),
          ),
        ],
      ).pSy(x: 10.0, y: 4.0),
    );
  }
}
