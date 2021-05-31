import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';

import '../utils/helpers.dart';

void showAppSnackbar(BuildContext context, Color backgroundColor, Widget text, [Duration duration = const Duration(seconds: 4)]) {
  showFlash(
    context: context,
    duration: duration,
    builder: (context, controller) {
      return Flash(
        controller: controller,
        enableDrag: true,
        backgroundColor: backgroundColor,
        brightness: Brightness.light,
        boxShadows: [BoxShadow(blurRadius: 4)],
        barrierBlur: 3.0,
        barrierColor: Colors.black38,
        barrierDismissible: true,
        style: FlashStyle.floating,
        position: FlashPosition.bottom,
        child: FlashBar(
          message: text,
          // showProgressIndicator: true,
          primaryAction: TextButton(
            onPressed: () => controller.dismiss(),
            child: Text('dismiss'.tr, style: textStyle(15, color: Colors.white)),
          ),
        ).pSy(x: 10),
      );
    },
  );
}

