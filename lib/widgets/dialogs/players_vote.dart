import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../models/player/player.dart';
import '../../utils/helpers.dart';

class PlayersVote extends StatelessWidget {
  final double height;
  final double width;
  final int minimumVote;
  final Map<Player, int> players;
  final Function0<void> submitVotes;
  final Function1<Player, void> increment;
  final Function1<Player, void> decrement;
  final Function0<void> dismiss;

  PlayersVote({
    Key? key,
    required this.height,
    required this.width,
    required this.decrement,
    required this.increment,
    required this.minimumVote,
    required this.players,
    required this.submitVotes,
    required this.dismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff222344),
        // color: Colors.blue,
      ),
      child: SingleChildScrollView(
        child: Column(
            children: [
              4.0.heightBox,
              Text(
                "stage_votes".tr(),
                style: textStyle(
                  context,
                  16,
                  color: Colors.white,
                ),
              ),
              8.0.heightBox,
              PlayerVoteTile(
                  height: height,
                  width: width,
                  count: minimumVote,
                  playerName: "minimum_vote".tr(),
                  increment: () {
                    // minimumVote.value += 1;
                    // minimumVote.update((val) {});
                    print(minimumVote);
                  },
                  decrement: () {
                    // if (minimumVote.value > 0) {
                    //   minimumVote.value -= 1;
                      // minimumVote.update((val) {});
                    // }
                    print(minimumVote);
                  },
                  ),
              8.0.heightBox,
              ...players
                  .map<String, Widget>(
                    (e, count) => MapEntry(
                      e.name,
                      PlayerVoteTile(
                        height: height,
                        width: width,
                        count: count,
                        playerName: e.name,
                        increment: () => increment(e),
                        decrement: () => decrement(e),
                      ),
                    ),
                  )
                  .values
                  .toList(),
              Container(
                height: height * 0.04,
              ),
              Container(
                width: width * 0.8,
                height: height * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "submit_votes".tr(),
                          style: textStyle(context, 14, color: Colors.white),
                        ).pSy(x: 8.0, y: 4.0),
                      ),
                      onPressed: submitVotes,
                      // onPressed:
                    ),
                    TextButton(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
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
              Container(
                height: height * 0.03,
              ),
            ],
          ).pSy(x: 20.0, y: 10.0),
        ),
    );
  }
}

class PlayerVoteTile extends StatelessWidget {
  final double height;
  final double width;
  final int count;
  final String playerName;
  final Function0<void> increment;
  final Function0<void> decrement;

  const PlayerVoteTile({
    Key? key,
    required this.height,
    required this.width,
    required this.count,
    required this.playerName,
    required this.increment,
    required this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: [
        Flexible(
          child: Container(
            width: width * 0.35,
            child: Text(
              "$playerName",
              style: textStyle(
                context,
                12,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Flexible(
          child: Row(
            children: [
              InkWell(
                onTap: increment,
                child: Icon(
                  Icons.add,
                  size: width * 0.1,
                  color: Colors.white,
                ),
              ),
              (width * 0.05).widthBox,
              Text(
                "$count",
                style: textStyle(
                  context,
                  16,
                  color: Colors.white,
                ),
              ),
              (width * 0.05).widthBox,
              InkWell(
                onTap: decrement,
                child: Icon(
                  Icons.horizontal_rule_outlined,
                  size: width * 0.1,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ]
          .row(
              axisSize: MainAxisSize.max,
              crossAlignment: CrossAxisAlignment.center,
              alignment: MainAxisAlignment.start)
          .pSy(x: width * 0.08),
    );
  }
}
