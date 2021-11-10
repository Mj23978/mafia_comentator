import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashState {
  SplashState({this.value = false});

  final bool value;
}

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier() : super(SplashState());

  Future<void> load() async {
    await Future.delayed(Duration(milliseconds: 800));
    state = SplashState(value: !state.value);
  }
}
