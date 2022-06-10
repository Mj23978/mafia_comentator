import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic enumFromString(String? value, dynamic t) {
  return t.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value!.toUpperCase());
}

TextStyle textStyle(
  BuildContext context,
  double size, {
  color = const Color(0xff222333),
  weight = FontWeight.w500,
}) {
  if (["fa", "ar"]
      .contains(EasyLocalization.of(context)!.currentLocale!.languageCode)) {
    return GoogleFonts.lalezar(
        fontSize: size, fontWeight: weight, color: color);
  }
  return GoogleFonts.rubik(fontSize: size, fontWeight: weight, color: color);
}

int gridTileCount(double maxWidth, [size = 135.0]) {
  final tileSize = maxWidth / size;
  final res = tileSize.round() == 0
      ? 1
      : (2.8 >= tileSize && tileSize >= 1.85)
          ? 2
          : tileSize;
  return res.round();
}

Future baseFlash(
  BuildContext context,
  Function1<FlashController, Widget> builder, {
  bool dismissHorizental = false,
  backgroundColor = Colors.transparent,
  boxShadows: const [BoxShadow(blurRadius: 4)],
}) {
  return showFlash(
    context: context,
    builder: (context, controller) {
      return Flash.dialog(
        controller: controller,
        backgroundColor: backgroundColor,
        boxShadows: boxShadows,
        enableDrag: true,
        brightness: Brightness.light,
        horizontalDismissDirection:
            dismissHorizental ? HorizontalDismissDirection.horizontal : null,
        barrierBlur: 3.0,
        barrierColor: Colors.black38,
        barrierDismissible: true,
        child: builder(controller),
      );
    },
  );
}

Color string2Color(String colorString) {
  int value = 0x00000000;
  if (colorString.isNotEmpty) {
    if (colorString[0] == '#') {
      colorString = colorString.substring(1);
    }
    value = int.tryParse(colorString, radix: 16)!;
    if (value < 0xFF000000) {
      value += 0xFF000000;
    }
  }
  return Color(value);
}

String indexToString(int index) {
  switch (index) {
    case 0:
      return "first";
    case 1:
      return "second";
    case 2:
      return "third";
    case 3:
      return "fourth";
    case 4:
      return "fifth";
    default:
      return "first";
  }
}
