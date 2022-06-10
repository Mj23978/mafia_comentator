import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';

import '../core/providers.dart';

class SplashView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(splashProvider);
    useCallback(() {
      print(state.value);
      ref.watch(splashProvider.notifier).load();
      print(state.value);
    }, []);
    // final notifier = ref.watch(splashProvider.notifier).load();
    return SplashScreen.callback(
      name: 'assets/flare/game-controller.riv',
      // name: 'assets/flare/space-coffee.riv',
      // backgroundColor: Color(0xFF1F0520),
      backgroundColor: Color(0xFF401734),
      onSuccess: (data) {
        //data is the optional data returned by until callback function
        context.beamToNamed("/home", replaceRouteInformation: true, stacked: false);
      },
      onError: (err, stack) {
        //error throw by until callback function
        print(err);
      },
      alignment: Alignment.center,
      // fit: BoxFit.cover,
      isLoading: state.value,
      startAnimation: 'Animation 1',
    );
  }
}
