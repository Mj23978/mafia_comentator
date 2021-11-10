import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/helpers.dart';

class AddDialogPickRoles extends StatelessWidget {
  final double height;
  final double width;
  final bool value;
  final Function1<bool?, void> onChanged;

  const AddDialogPickRoles({
    Key? key,
    required this.height,
    required this.width,
    required this.value,
    required this.onChanged,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: value,
                  onChanged: onChanged,
                  side: BorderSide(width: 2, color: Colors.green),
                  activeColor: Colors.green,
                ),
                Text("city".tr(), style: textStyle(context, 14)),
              ],
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
