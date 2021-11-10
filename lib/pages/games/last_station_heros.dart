import 'package:beamer/beamer.dart';
import 'package:dartx/dartx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/mock/heros.dart';
import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';

class LastStationHerosView extends ConsumerWidget {
  int _columnCount(BoxConstraints cs) {
    var width = 135;
    if (cs.maxWidth > 1500) {
      width = 220;
    } else if (cs.maxWidth > 1200) {
      width = 195;
    } else if (cs.maxWidth > 900) {
      width = 180;
    } else if (cs.maxWidth > 700) {
      width = 165;
    } else if (cs.maxWidth > 500) {
      width = 150;
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
            style: textStyle(context, 16),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actionsIconTheme: IconThemeData(color: Colors.red),
          iconTheme: IconThemeData(color: Color(0xff222333)),
        ),
        backgroundColor: Color(0xffffffff),
        body: IconTheme(
          data: IconThemeData(color: Color(0xff222333)),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columnCount,
              mainAxisSpacing: cs.maxHeight * 0.02,
              childAspectRatio: 0.7,
              crossAxisSpacing: cs.maxWidth * 0.02,
            ),
            itemCount: lastStationHeros.length,
            padding: EdgeInsets.symmetric(horizontal: cs.maxWidth * 0.03),
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredGrid(
                columnCount: columnCount,
                position: index,
                duration: 300.0.milliseconds,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Hero(
                      tag: lastStationHeros[index].characterName,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              lastStationHeros[index].backgroundImage,
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              context.beamToNamed("/last-station/heros/details",
                                data: {
                                  "charachter_name": lastStationHeros[index].characterName,
                                  "charachter_image": lastStationHeros[index].backgroundImage,
                                },
                              );
                            },
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
      );
    });
  }
}
