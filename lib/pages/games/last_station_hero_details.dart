import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';

class LastStationHeroDetailsView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final beamState = Beamer.of(context).currentBeamLocation.state as BeamState;
    if (beamState.queryParameters["charachter_name"] != null) {
      final charachterName = beamState.queryParameters["charachter_name"] as String;
      final charachterImage = beamState.queryParameters["charachter_image"] as String;
      return LayoutBuilder(builder: (context, cs) {
        return Scaffold(
          appBar: AppBar(
            leading: BeamBackButton(),
            title: Text(
              charachterName.tr(),
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
          body: Hero(
            tag: charachterName,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(charachterImage), fit: BoxFit.fitHeight),
                // color: Colors.red,
              ),
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
