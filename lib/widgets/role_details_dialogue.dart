import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';

class RoleDetails extends StatelessWidget {
  final double height;
  final double width;
  final String roleName;
  final TextStyle roleNameTextStyle;
  final String roleDes;
  final TextStyle roleDesTextStyle;
  final String roleSide;
  final TextStyle roleSideTextStyle;
  final Color color;
  final Function0<void> dismiss;

  const RoleDetails({
    Key? key,
    required this.height,
    required this.width,
    required this.roleName,
    required this.roleSide,
    required this.roleDes,
    required this.dismiss,
    this.roleNameTextStyle = const TextStyle(fontSize: 16),
    this.roleDesTextStyle = const TextStyle(fontSize: 14),
    this.roleSideTextStyle = const TextStyle(fontSize: 12),
    this.color = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(roleName, style: roleNameTextStyle),
              Text(roleSide, style: roleSideTextStyle),
              Spacer(),
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: color,
                ),
                onPressed: () {},
              )
            ],
          ).pSy(x: 10.0),
          Divider(
            indent: 4,
            endIndent: 4,
            color: color,
          ),
          Text(roleDes, style: roleDesTextStyle).pSy(x: 15.0, y: 4.0),
          Spacer(),
          TextButton(
            onPressed: dismiss,
            // onPressed: () {
            //   controller.dismiss();
            // },
            child: Center(
              child: Text("Understand", style: roleNameTextStyle)
            ),
          ),
          10.0.heightBox,
        ],
      ).pSy(x: 10.0, y: 8.0),
    );
  }
}
