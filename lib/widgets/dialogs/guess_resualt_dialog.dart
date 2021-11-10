import 'package:flutter/material.dart';

import '../rive/flare.dart';

class GuessResaultDialog extends StatelessWidget {
  final double height;
  final double width;
  final bool result;

  const GuessResaultDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.result,
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
      child: Center(
        child: CoolAlertContainer(
          width: width,
          dialogFlr: result ? AppAnim.success : AppAnim.error,
        ),
      ),
    );
  }
}
