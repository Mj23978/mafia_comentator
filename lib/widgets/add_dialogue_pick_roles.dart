import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_x/flutter_x.dart';

class AddDialoguePickRoles extends StatelessWidget {
  final double height;
  final double width;
  final bool value;
  final Function1<bool?, void> onChanged;
  final TextStyle textStyle;

  const AddDialoguePickRoles({
    Key? key,
    required this.height,
    required this.width,
    required this.value,
    required this.onChanged,
    this.textStyle = const TextStyle(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Obx(
              () => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: value,
                    onChanged: onChanged,
                    side: BorderSide(width: 2, color: Colors.green),
                    activeColor: Colors.green,
                  ),
                  Text("City", style: textStyle),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(),
            flex: 7,
          )
        ],
      ).pSy(x: 8.0, y: 6.0),
    );
  }
}
