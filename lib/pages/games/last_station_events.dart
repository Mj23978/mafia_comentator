import 'package:beamer/beamer.dart';
import 'package:dartx/dartx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/mock/heros.dart';
import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';


class LastStationEventsView extends ConsumerWidget {
  int _columnCount(BoxConstraints cs) {
    var width = 185;
    if (cs.maxWidth > 1500) {
      width = 290;
    } else if (cs.maxWidth > 1200) {
      width = 270;
    } else if (cs.maxWidth > 900) {
      width = 250;
    } else if (cs.maxWidth > 700) {
      width = 225;
    } else if (cs.maxWidth > 500) {
      width = 210;
    }
    final tileSize = cs.maxWidth / width;
    return tileSize.round();
  }

  @override
  Widget build(BuildContext context, ref) {
    return LayoutBuilder(builder: (context, cs) {
      final columnCount = _columnCount(cs);
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
          iconTheme: IconThemeData(color: Colors.white),
        ),
        backgroundColor: Color(0xffffffff),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1D030C),
                  image: DecorationImage(
                    alignment: Alignment(0, 0),
                    fit: BoxFit.cover,
                    image:
                        AssetImage('assets/images/last_station_events_bg.jpg'),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columnCount,
                  mainAxisSpacing: cs.maxHeight * 0.03,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: cs.maxWidth * 0.03,
                ),
                padding: EdgeInsets.only(
                  right: cs.maxWidth * 0.03,
                  left: cs.maxWidth * 0.03,
                  top: cs.maxHeight * 0.1,
                ),
                itemCount: lastStationEvents.length,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredGrid(
                    columnCount: columnCount,
                    position: index,
                    duration: 300.0.milliseconds,
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: InkWell(
                          onTap: () {
                            context.beamToNamed("/last-station/events/details",
                              data: {"event": lastStationEvents[index]},
                            );
                          },
                          child: Hero(
                            tag: lastStationEvents[index].eventName,
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Color(0xFFF6BAA4),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/rusty-bg.jfif",
                                      ),
                                      fit: BoxFit.cover),
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
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        cs.maxWidth / columnCount * 1.33 * 0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFBA6058),
                                      // color: Color(0xFFC8625D),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        lastStationEvents[index].eventName.tr(),
                                        style: textStyle(context, 14,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      lastStationEvents[index]
                                          .eventDescription
                                          .tr(),
                                      style: textStyle(context, 14,
                                          color: Colors.amber.shade300),
                                    ).p(cs.maxWidth * 0.02),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
