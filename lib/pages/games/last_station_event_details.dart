import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/mock/heros.dart';
import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';


class LastStationEventDetailsView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final beamState = Beamer.of(context).currentBeamLocation.state as BeamState;
    if (beamState.queryParameters["event"] != null) {
      final event = beamState.queryParameters["event"] as EventCard;
      return LayoutBuilder(builder: (context, cs) {
        return Scaffold(
          appBar: AppBar(
            leading: BeamBackButton(),
            title: Text(
              event.eventName.tr(),
              style: textStyle(context, 16, color: Colors.white),
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Color(0xFFBA6058),
            centerTitle: true,
            actionsIconTheme: IconThemeData(color: Colors.red),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          backgroundColor: Color(0xffffffff),
          body: Hero(
            tag: event.eventName,
            child: Container(
              width: cs.maxWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/rusty-bg.jfif",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      event.eventDescription.tr(),
                      style: textStyle(context, 14, color: Colors.amber),
                    ),
                  ),
                ],
              ).pSy(
                  x: cs.maxWidth * 0.05,
                  y: cs.maxHeight * 0.02),
            ),
          ),
        );
      });
    } else {
      return Scaffold(
        appBar: AppBar(),
      );
    }
  }
}
