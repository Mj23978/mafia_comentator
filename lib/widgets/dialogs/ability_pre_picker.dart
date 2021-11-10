// 2 or more targets - target and guess
import 'package:dartz/dartz.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/helpers.dart';

class MorePlayerPickerDialog extends StatelessWidget {
  final double height;
  final double width;
  final int length;
  final Function1<int, void> onPress;
  final Function0<void> dismiss;
  final Function0<void> submit;
  final List<String> names;

  const MorePlayerPickerDialog(
      {Key? key,
      required this.height,
      required this.width,
      required this.length,
      required this.onPress,
      required this.dismiss,
      required this.submit,
      required this.names})
      : super(key: key);

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
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "pick_players".tr(),
                style: textStyle(
                  context,
                  18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: (height * 0.06).heightBox,
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return TextButton(
                  onPressed: () {
                    onPress(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.transparent,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04, vertical: height * 0.01),
                    child: Text(
                      names.length > length &&
                              names[index] != indexToString(index)
                          ? names[index]
                          : "select_a_player".tr(),
                      style: textStyle(context, 13),
                    ),
                  ),
                );
              },
              childCount: length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridTileCount(width, width * 0.43),
              childAspectRatio: 2.8,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 8.0,
            ),
          ),
          SliverToBoxAdapter(
            child: (height * 0.06).heightBox,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "save".tr(),
                        style: textStyle(context, 14, color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: submit,
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
          )
        ],
      ),
    );
  }
}
