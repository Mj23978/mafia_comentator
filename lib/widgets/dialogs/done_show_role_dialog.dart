import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/helpers.dart';

class DoneShowRolesDialog extends StatelessWidget {
  final double height;
  final double width;
  final Function0<void> refreshRoles;
  final Function0<void> goComentatorPage;

  const DoneShowRolesDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.goComentatorPage,
    required this.refreshRoles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.08, vertical: height * 0.09),
      decoration: BoxDecoration(
        color: Color(0xff222344),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "success".tr(),
            style: textStyle(
              context,
              18,
              color: Colors.green,
            ),
          ),
          Spacer(),
          Text(
            "done_show_message".tr(),
            style: textStyle(context, 14, color: Colors.white),
          ).pSy(x: width * 0.04),
          Spacer(),
          TextButton(
            child: Container(
              width: width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "go_comentator_page".tr(),
                  style: textStyle(context, 14, color: Colors.white),
                ).pSy(x: 8.0, y: 4.0),
              ),
            ),
            onPressed: goComentatorPage,
          ),
          10.heightBox,
          TextButton(
            child: Container(
              width: width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "refresh_roles".tr(),
                  style: textStyle(context, 14, color: Colors.white),
                ).pSy(x: 8.0, y: 4.0),
              ),
            ),
            onPressed: refreshRoles,
          ),
        ],
      ),
    );
  }
}
