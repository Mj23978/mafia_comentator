import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';

import '../../models/player/player.dart';
import '../../utils/helpers.dart';

class KillPlayerDialog extends StatelessWidget {
  final double height;
  final double width;
  final List<Player> players;
  final Function2<double, double, int> gridTileCount;
  final Function0<void> killFunc;
  final Function0<void> dismiss;
  final List<int>? indexes;
  final List<int> selectedIndexes;

  const KillPlayerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.players,
    required this.gridTileCount,
    required this.killFunc,
    required this.selectedIndexes,
    required this.dismiss,
    this.indexes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var alivePlayers = players.where((element) => element.alive).toList();
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.07, vertical: height * 0.07),
      decoration: BoxDecoration(
        color: Color(0xff222344),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "kill_player".tr(),
                style: textStyle(
                  context,
                  18,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: (height * 0.1).heightBox),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var selected = selectedIndexes.contains(index);
                  return InkWell(
                    onTap: () {
                      if (selectedIndexes.contains(index)) {
                        selectedIndexes.remove(index);
                      } else {
                        selectedIndexes.add(index);
                      }
                      // selectedIndexes.update((val) {});
                      // players.update((val) {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selected ? Colors.red : Colors.transparent,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.01, vertical: height * 0.01),
                      child: Align(
                        alignment: Alignment(0, 0),
                        child: Text(
                          alivePlayers[index].name,
                          style: textStyle(
                            context,
                            13,
                            weight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: alivePlayers.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridTileCount(width, width * 0.3),
                childAspectRatio: 2.5,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
              ),
            ),
          SliverToBoxAdapter(child: (height * 0.1).heightBox),
          SliverToBoxAdapter(
            child: Container(
              width: width * 0.7,
              height: height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "kill".tr(),
                        style: textStyle(context, 14,
                            weight: FontWeight.w500, color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: () {
                      killFunc();
                    },
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "dismiss".tr(),
                        style: textStyle(context, 14,
                            weight: FontWeight.w500, color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: dismiss,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
