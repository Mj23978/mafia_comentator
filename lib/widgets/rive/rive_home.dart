import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class HomeRive extends StatefulWidget {
  final String name;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Alignment alignment;
  final String? loopAnimation;

  const HomeRive({
    Key? key,
    required this.name,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.loopAnimation,
  }) : super(key: key);

  @override
  _HomeRiveState createState() => _HomeRiveState();
}

class _HomeRiveState extends State<HomeRive> {
  late _HomeRiveController _controller;
  Artboard? _riveArtboard;

  @override
  void initState() {
    super.initState();
    rootBundle.load(widget.name).then(
      (data) async {
        final file = RiveFile.import(data);

        final artboard = file.mainArtboard;
        _controller = _HomeRiveController(widget.loopAnimation);
        artboard.addController(_controller);
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: widget.alignment,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: _riveArtboard == null
              ? Container()
              : Rive(
                  artboard: _riveArtboard!,
                  fit: widget.fit,
                  alignment: widget.alignment,
                ),
        ),
      ),
    );
  }
}

class _HomeRiveController extends RiveAnimationController<RuntimeArtboard> {

  String? _loadingAnimation;
  LinearAnimationInstance? _loading;

  _HomeRiveController(
    this._loadingAnimation,
  );

  @override
  bool init(RuntimeArtboard artboard) {
    final loadig = artboard.animations
        .firstWhereOrNull((a) {
          print(a.name);
          return a.name == _loadingAnimation;
        });
    if (loadig != null) {
      _loading = LinearAnimationInstance(loadig as LinearAnimation);
    }
    isActive = _loading != null;
    return isActive;
  }

  @override
  void apply(RuntimeArtboard artboard, double elapsed) {
    if (_loading != null) {
      _loading!.animation.loop = Loop.loop;
      _loading!.animation.apply(_loading!.time, coreContext: artboard, mix: 1);
      _loading!.advance(elapsed);
    }
  }
}
