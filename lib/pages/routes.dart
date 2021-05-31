import 'package:get/get.dart';

import 'add_role/add_role_page.dart';
import 'game/game_page.dart';
import 'home/home_page.dart';
import 'pick_roles/pick_roles_page.dart';
import 'settings/settings_page.dart';
import 'show_roles/show_roles_page.dart';
import 'game/game_night.dart';

class AppPages {
  static String init = Routes.Home.nameToRoute();

  static final routes = [
    GetPage(
      name: '/home',
      title: 'Home View',
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/settings',
      title: 'Settings View',
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: '/pick-roles',
      title: 'Pick Roles View',
      page: () => PickRolesView(),
      binding: PickRolesBinding(),
    ),
    GetPage(
      name: '/add-role',
      title: 'Add Role View',
      page: () => AddRoleView(),
      binding: AddRoleBinding(),
    ),
    GetPage(
      name: '/show-roles',
      title: 'Show Roles View',
      page: () => ShowRolesView(),
      binding: ShowRolesBinding(),
    ),
    GetPage(
      name: '/game',
      title: 'Game View',
      page: () => GameView(),
      binding: GameBinding(),
    ),
    GetPage(
      name: '/game-night',
      title: 'Game Night',
      page: () => GameNightView(),
      binding: GameNightBinding(),
    ),
  ];
}

abstract class Routes {
  static const Home = 'Home';
  static const Game = 'Game';
  static const ShowRoles = 'ShowRoles';
  static const PickRoles = 'PickRoles';
  static const Settings = 'Settings';
  static const NotFound = 'not-found';
}

extension RoutesExtension on String {
  String nameToRoute() => '/${toLowerCase()}';
}
