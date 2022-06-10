import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/mock/heros.dart';
import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';


class MafiaHeroDetailsView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final beamState = Beamer.of(context).currentBeamLocation.state as BeamState;
    if (beamState.queryParameters["charachter"] != null) {
      final charachter = beamState.queryParameters["charachter"] as HerosCard;
      return LayoutBuilder(builder: (context, cs) {
        return Scaffold(
          appBar: AppBar(
            leading: BeamBackButton(),
            title: Text(
              charachter.characterName.tr(),
              style: textStyle(context, 16, color: Colors.white),
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: charachter.color ?? Colors.transparent,
            centerTitle: true,
            actionsIconTheme: IconThemeData(color: Colors.red),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          backgroundColor: charachter.color ?? Color(0xffffffff),
          body: Hero(
            tag: charachter.characterName,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(charachter.backgroundImage),
                    fit: BoxFit.fitHeight),
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
