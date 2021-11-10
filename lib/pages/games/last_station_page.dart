import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:beamer/beamer.dart';

import '../../config/mock/heros.dart';
import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';

class LastStationView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return LayoutBuilder(builder: (context, cs) {
      return Scaffold(
        appBar: AppBar(
          leading: BeamBackButton(),
          title: Text(
            "last_station".tr(),
            style: textStyle(context, 16, color: Colors.white),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        // backgroundColor: Color(0xffE6E6EC),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/last-station-bg-portraite.jpg"),
                      alignment: Alignment.center,
                      fit: BoxFit.fitHeight),
                ),
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (cs.maxHeight * 0.2).heightBox,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: cs.maxHeight * 0.3,
                          child: AspectRatio(
                            aspectRatio: 0.7,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: <Color>[
                                          Colors.grey.shade200,
                                          Colors.grey.shade300,
                                          // Colors.white,
                                        ],
                                        tileMode: TileMode.clamp,
                                      ).createShader(bounds);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/last_station_events_bg.jpg"),
                                          fit: BoxFit.cover,
                                          alignment: Alignment(-0.3, 0),
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            context.beamToNamed(
                                                "/last-station/events");
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment(0, 0.8),
                                    child: Text("events".tr(),
                                        style: textStyle(context, 14,
                                            color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: cs.maxHeight * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  color: Colors.black38,
                                  offset: Offset(-2, 2)),
                              BoxShadow(
                                  blurRadius: 1,
                                  spreadRadius: 0.5,
                                  color: Colors.black38,
                                  offset: Offset(1, 1)),
                            ],
                          ),
                          child: AspectRatio(
                            aspectRatio: 0.7,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: ShaderMask(
                                      shaderCallback: (Rect bounds) {
                                        return LinearGradient(
                                          colors: <Color>[
                                            Colors.grey.shade400,
                                            Colors.grey.shade500,
                                            // Colors.white,
                                          ],
                                          tileMode: TileMode.clamp,
                                        ).createShader(bounds);
                                      },
                                      child: Column(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            child: Row(
                                              children:
                                                  [10, 2].map<Widget>((e) {
                                                return Container(
                                                  height: cs.maxHeight * 0.15,
                                                  width:
                                                      cs.maxHeight * 0.15 * 0.7,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          lastStationHeros[e]
                                                              .backgroundImage),
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 1,
                                            child: Row(
                                              children: [3, 5].map<Widget>((e) {
                                                return Container(
                                                  height: cs.maxHeight * 0.15,
                                                  width:
                                                      cs.maxHeight * 0.15 * 0.7,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          lastStationHeros[e]
                                                              .backgroundImage),
                                                      fit: BoxFit.fitHeight,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        context.beamToNamed("/last-station/heros");
                                      },
                                      child: Align(
                                        alignment: Alignment(0, 0.8),
                                        child: Text("heros".tr(),
                                            style: textStyle(context, 14,
                                                color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    (cs.maxHeight * 0.03).heightBox,
                    Container(
                      height: cs.maxHeight * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/last-station-rules.jpg",
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.black38,
                              offset: Offset(-2, 2)),
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              color: Colors.black38,
                              offset: Offset(1, 1)),
                        ],
                      ),
                      child: AspectRatio(
                        aspectRatio: 0.7,
                        child: Align(
                          alignment: Alignment(0, 0.8),
                          child: Text("rules".tr(),
                              style:
                                  textStyle(context, 14, color: Colors.white)),
                        ),
                      ),
                    ),
                    (cs.maxHeight * 0.05).heightBox,
                  ],
                ).pSy(x: cs.maxWidth * 0.05),
              ),
            ),
          ],
        ),
      );
    });
  }
}
