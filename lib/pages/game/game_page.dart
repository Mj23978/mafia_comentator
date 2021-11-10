import 'dart:math' show pi;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import '../../core/providers.dart';
import '../../utils/helpers.dart';
import '../../widgets/game_listTile.dart';
import 'bottom_nav.dart';
import 'game_info_tile.dart';


class GameView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(gameProvider);
    return LayoutBuilder(builder: (context, cs) {
      return WillPopScope(
        onWillPop: () async {
          await controller.fastFinish(
              context, cs.maxWidth * 0.8, cs.maxHeight * 0.45);
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text('day'.tr(), style: textStyle(context, 18)),
            centerTitle: true,
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(
                // Ionicons.moon,
                Ionicons.moon,
                color: Color(0xff222333),
              ),
              onPressed: () {
                controller.toNight(
                    context, cs.maxWidth * 0.75, cs.maxHeight * 0.4);
              },
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/mask.svg",
                  color: Color(0xff222333),
                ),
                onPressed: () {
                  controller.toggleRoles();
                },
              ),
              Transform.rotate(
                angle: pi / 2.0,
                child: Icon(Icons.read_more_outlined),
              ).opacity(0.001),
            ],
          ),
          backgroundColor: Color(0xffE6E6EC),
          body: Stack(
            children: [
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: cs.maxHeight * 0.085,
                    crossAxisCount: gridTileCount(cs.maxWidth, 380),
                    mainAxisSpacing: 7.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: controller.players.length,
                  itemBuilder: (context, index) {
                    var player = controller.players[index];
                    return GameListTile(
                        onCheck: (value) {
                          if (!player.alive) {
                            controller.revivePlayer(context, cs.maxWidth * 0.7,
                                cs.maxHeight * 0.35, index);
                          } else {
                            controller.killConfirm(context, cs.maxWidth * 0.7,
                                cs.maxHeight * 0.35, [index], false);
                          }
                        },
                        value: player.alive,
                        roleText: Text(
                          player.roleName ?? "Null",
                          style: textStyle(context, 15),
                        ),
                        playerText: Text(
                          player.name,
                          style: textStyle(context, 15),
                        ),
                        showRole: controller.showRoles,
                    );
                  },
                ).pSy(x: 12, y: 4),
              Positioned(
                bottom: cs.maxHeight * 0.06,
                right: 0,
                child: GameInfoTile(
                  height: cs.maxHeight,
                  width: cs.maxWidth,
                  controller: controller,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GameDayBottomNav(
                  controller: controller,
                  height: cs.maxHeight,
                  width: cs.maxWidth,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
