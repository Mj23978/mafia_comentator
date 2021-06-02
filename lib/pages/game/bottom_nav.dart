import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/extensions.dart';
import 'game_page.dart';

class GameDayBottomNav extends StatelessWidget {
  final double height;
  final double width;
  final GameController controller;

  const GameDayBottomNav({
    Key? key,
    required this.height,
    required this.width,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.07,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xff222333),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              controller.noteDialog(
                context,
                width * 0.7,
                height * 0.45,
              );
            },
            child: SvgPicture.asset(
              "assets/icons/note.svg",
              width: width * 0.06,
            ),
          ).flex(1),
          TextButton(
            onPressed: () {
              var desiredHeight = height * 0.42 +
                    (height * 0.08 * (controller.players.value.length / 3));
              controller.stageVotes(
                context,
                width * 0.7,
                desiredHeight > (height * 0.75) ? height * 0.75 : desiredHeight,
              );
            },
            child: SvgPicture.asset(
              "assets/icons/hand.svg",
              width: width * 0.05,
            ),
          ).flex(1),
          TextButton(
            onPressed: () {
              controller.killPlayer(
                context,
                width * 0.7,
                height * 0.25 +
                    (height * 0.08 * (controller.players.value.length / 3)),
              );
            },
            child: SvgPicture.asset(
              "assets/icons/gun.svg",
              color: Colors.white,
              width: width * 0.07,
            ),
          ).flex(1),
          TextButton(
            onPressed: () {
              controller.showTimer(context, width * 0.65, height * 0.45);
            },
            child: SvgPicture.asset(
              "assets/icons/clock.svg",
              width: width * 0.05,
            ),
          ).flex(1),
          TextButton(
            onPressed: () {
              controller.fastFinish(context, width * 0.75, height * 0.3);
            },
            child: SvgPicture.asset(
              "assets/icons/ff.svg",
              color: Colors.white,
              width: width * 0.05,
            ),
          ).flex(1),
        ],
      ),
    );
  }
}
