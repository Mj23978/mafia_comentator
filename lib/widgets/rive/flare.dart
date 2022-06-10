import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class CoolAlertContainer extends StatelessWidget {
  final double width;
  final bool loopAnimation;
  final double? borderRadius;
  final double? height;
  final Color? backgroundColor;
  final String? flareAsset;
  final String dialogFlr;
  final String? flareAnimationName;

  const CoolAlertContainer({
    required this.width,
    this.loopAnimation = false,
    this.dialogFlr = AppAnim.success,
    this.flareAnimationName,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.flareAsset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Color(0xff223344),
              color: backgroundColor ?? Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 150,
              width: 150,
              child: FlareActor(
                dialogFlr,
                animation:
                    loopAnimation ? flareAnimationName : null,
                controller: loopAnimation
                    ? null
                    : SingleLoopController(
                        flareAnimationName ?? 'play',
                        1,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SingleLoopController extends FlareController {
  final String _animation;
  final double _loopAmount;
  final double _mix;
  ActorAnimation? _actor;
  double _duration = 0;
  double _loopCount = 0;

  SingleLoopController(this._animation, this._loopAmount, [this._mix = 0.7]);

  @override
  void initialize(FlutterActorArtboard artBoard) {
    _actor = artBoard.getAnimation(_animation);
  }

  @override
  bool advance(FlutterActorArtboard artBoard, double elapsed) {
    if (_loopCount >= _loopAmount) {
      // Looped enough times!
      _actor!.apply(_actor!.duration, artBoard, 1);
      return false;
    }
    _duration += elapsed;

    if (_duration >= _actor!.duration) {
      // Loop!
      _loopCount++;
      _duration %= _actor!.duration;
    }
    _actor!.apply(_duration, artBoard, _mix);
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}

class AppAnim {
  static const loading = 'assets/flare/loading.flr';
  static const success = 'assets/flare/success_check.flr';
  static const error = 'assets/flare/error_check.flr';
  static const warning = 'assets/flare/warning_check.flr';
  static const info = 'assets/flare/info_check.flr';
}
