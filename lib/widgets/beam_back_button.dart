import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class BeamBackButton extends StatelessWidget {
  
  BeamBackButton({Key? key, this.onPress, this.color, this.condition}) : super(key: key);

  final void Function()? onPress;
  final Color? color;
  bool? condition;

  @override
  Widget build(BuildContext context) {
    condition = condition ?? context.canBeamBack;
    return IconButton(
      icon: BackButtonIcon(),
      mouseCursor: condition!
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      color: color,
      tooltip: condition!
          ? MaterialLocalizations.of(context).backButtonTooltip
          : null,
      onPressed: onPress ?? (condition!
          ? () {
              // context.popBeamLocation();
              context.beamBack();
            }
          : null),
    );
  }
}
