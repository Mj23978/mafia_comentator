import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';

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
            child: Text('Dismiss ', style: TextStyle(color: Colors.white)),
          ),
        ),
      );
    },
  );
}

void showAppDialoge(BuildContext context, Widget child) {
  showFlash(
    context: context,
    builder: (context, controller) {
      return Flash.dialog(
        controller: controller,
        enableDrag: true,
        // backgroundColor: backgroundColor,
        brightness: Brightness.light,
        boxShadows: [BoxShadow(blurRadius: 4)],
        barrierBlur: 3.0,
        barrierColor: Colors.black38,
        barrierDismissible: true,
        child: child,
      );
    },
  );
}

