import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import 'logger.dart';
import 'notifiers/add_role_provider.dart';
import 'notifiers/app_provider.dart';
import 'notifiers/game_provider.dart';
import 'notifiers/mafia_intro_provider.dart';
import 'notifiers/pick_roles_provider.dart';
import 'notifiers/show_role_provider.dart';
import 'notifiers/splash_provider.dart';

final ProviderFamily<Logger, String> loggerProvider =
    Provider.family<Logger, String>((ref, scope) {
  return getLogger(scope);
});

final appProvider = Provider(
  (ref) => AppProvider(),
);

final addRoleProvider = ChangeNotifierProvider((ref) {
  return AddRoleProvider();
});

final mafiaIntroProvider = ChangeNotifierProvider((ref) {
  return MafiaIntroProvider(ref.watch(appProvider));
});

final showRolesProvider = ChangeNotifierProvider((ref) {
  return ShowRolesProvider(ref.watch(appProvider));
});

final pickRolesProvider = ChangeNotifierProvider((ref) {
  return PickRolesProvider(ref.watch(appProvider));
});

final gameProvider = ChangeNotifierProvider((ref) {
  return GameProvider(ref.watch(appProvider));
});

final splashProvider = StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  return SplashNotifier();
});

