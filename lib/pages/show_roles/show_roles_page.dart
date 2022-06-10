import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/providers.dart';
import '../../utils/helpers.dart';

class ShowRolesView extends ConsumerWidget {
  Widget _playerTile(BuildContext context, String name) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        gradient: LinearGradient(
          begin: Alignment(-0.91, -1.0),
          end: Alignment(0.87, 1.0),
          colors: [const Color(0xbf4022a5), const Color(0xff5677ad)],
          stops: [0.0, 1.0],
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: textStyle(context, 17, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(showRolesProvider);
    final beamState = Beamer.of(context).currentBeamLocation.state as BeamState;

    if (beamState.routeState != null) {
      if (controller.players.length == 0) {
        // controller.setRoles(beamState.queryParameters["show_roles"] ?? []);
        // controller.setPlayers(beamState.queryParameters["show_players"] ?? []);
        controller.refreshRoles();
      }
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'left_players'.tr(namedArgs: {
                "count": controller.getShowedPlayers().toString()
              }),
              style: textStyle(
                context,
                16,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.refresh, color: Colors.white),
              onPressed: () => controller.refreshRoles(),
            ),
          ),
          extendBodyBehindAppBar: true,
          extendBody: true,
          backgroundColor: Color(0xffE6E6EC),
          body: Container(
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/city.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: LayoutBuilder(builder: (context, cs) {
              return GridView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: cs.maxWidth * 0.02,
                    vertical: cs.maxHeight * 0.02),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.2,
                  crossAxisCount: gridTileCount(cs.maxWidth, 118),
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: controller.players.length,
                itemBuilder: (context, index) {
                  var player = controller.players[index];
                  return player.roleShowed
                      ? Container()
                      : InkWell(
                          onLongPress: () {
                            controller.showPlayerRoleDialogue(
                                context,
                                cs.maxWidth * 0.55,
                                cs.maxHeight * 0.29,
                                player);
                            controller.setPlayerIndex(
                                index,
                                controller.players[index]
                                    .copyWith(roleShowed: true));
                          },
                          child: _playerTile(context, player.name));
                },
              );
            }),
          ));
    } else {
      return Container();
    }
  }
}


// decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(10.0),
  //   color: Colors.red,
  // ),
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(23.0),
  //   gradient: LinearGradient(
  //     begin: Alignment(-0.96, -0.62),
  //     end: Alignment(0.95, 0.78),
  //     colors: [
  //       const Color(0xccad79cb),
  //       const Color(0xcc3e66c4)
  //     ],
  //     stops: [0.0, 1.0],
  //   ),
  //   border: Border.all(
  //       width: 1.0, color: const Color(0xff707070)),
  // ),
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(23.0),
  //   gradient: LinearGradient(
  //     begin: Alignment(0.5, 0),
  //     end: Alignment(0.5, 1.0),
  //     colors: [
  //       const Color(0xcc70db70).withOpacity(0.8),
  //       const Color(0xc73aa819).withOpacity(0.8)
  //     ],
  //     stops: [0.0, 1.0],
  //   ),
  //   border: Border.all(
  //       width: 1.0, color: const Color(0xff707070)),
  // ),
  // decoration: BoxDecoration(
  //   borderRadius: BorderRadius.circular(23.0),
  //   gradient: LinearGradient(
  //     begin: Alignment(0.5, 0.1),
  //     end: Alignment(0.5, 0.9),
  //     colors: [
  //       const Color(0xa8d04158).withOpacity(0.7),
  //       const Color(0x9ce13b6d).withOpacity(0.65)
  //     ],
  //     stops: [0.0, 1.0],
  //   ),
  //   border: Border.all(
  //       width: 1.0, color: const Color(0xff707070)),
  // ),