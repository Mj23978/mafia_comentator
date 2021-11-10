import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';
import '../../widgets/rive/rive_home.dart';

class AllGamesView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return LayoutBuilder(builder: (context, cs) {
      return Scaffold(
        appBar: AppBar(
          leading: BeamBackButton(condition: false),
          title: Text(
            "Toxic Games",
            style: textStyle(context, 16, color: Colors.white),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              // icon: Icon(Icons.settings_sharp, color: Color(0xff233344)),
              icon: Icon(Icons.settings_sharp, color: Colors.white),
              onPressed: () {
                context.beamToNamed("/settings", popToNamed: "/home");
              },
            ).pSy(x: cs.maxWidth * 0.02)
          ],
          centerTitle: true,
        ),
        // backgroundColor: Color(0xffE6E6EC),
        extendBodyBehindAppBar: true,
        body: IconTheme(
          data: IconThemeData(color: Color(0xff222333)),
          child: Stack(
            children: [
              Positioned.fill(
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return RadialGradient(
                      center: Alignment.topLeft,
                      radius: 1.0,
                      colors: <Color>[
                        Colors.yellow,
                        Colors.deepOrange.shade900
                        // Colors.white,
                      ],
                      tileMode: TileMode.mirror,
                    ).createShader(bounds);
                  },
                  // blendMode: ,
                  child: Container(
                    color: Color(0xFF1D030C),
                    child: HomeRive(
                      name: "assets/flare/warbanner.riv",
                      loopAnimation: "Untitled 2",
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.fitWidth,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (cs.maxHeight * 0.2).heightBox,
                    AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/mafia-bg-landscape.jpg"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              context.beamToNamed("/mafia");
                            },
                            child: Align(
                              alignment: Alignment(0.57, 0.65),
                              child: Text("mafia".tr(),
                                  style: textStyle(context, 14,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    (cs.maxHeight * 0.05).heightBox,
                    AspectRatio(
                      aspectRatio: 3 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/last-station-bg-landscape.png"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.center),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              context.beamToNamed("/last-station");
                            },
                            child: Align(
                              alignment: Alignment(0.5, 0.5),
                              child: Text("last_station".tr(),
                                  style: textStyle(context, 14,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).pSy(x: cs.maxWidth * 0.05),
              ),
            ],
          ),
        ),
      );
    });
  }
}
