import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'game/game_page.dart';
import 'games/all_games_page.dart';
import 'games/last_station_event_details.dart';
import 'games/last_station_events.dart';
import 'games/last_station_hero_details.dart';
import 'games/last_station_heros.dart';
import 'games/last_station_page.dart';
import 'games/mafia_game_page.dart';
import 'games/mafia_hero_details.dart';
import 'games/mafia_heros.dart';
import 'pick_roles/pick_roles_page.dart';
import 'settings/settings_page.dart';
import 'show_roles/show_roles_page.dart';
import 'splash_view.dart';

final navigationToSecondProvider = StateProvider<bool>((ref) => false);
final navigationToThirdProvider = StateProvider<bool>((ref) => false);

class HomeLocation extends BeamLocation<BeamState> {

  @override
  List<Pattern> get pathPatterns => [
    '/',
    '/home',  
    '/settings',  
  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(key: ValueKey("Splash"), child: SplashView()),
      if (state.uri.pathSegments.contains("home"))
        BeamPage(key: ValueKey("Home"), child: AllGamesView()),
      if (state.uri.pathSegments.contains("settings"))
        BeamPage(key: ValueKey("Settings"), child: SettingsView()),
    ];
  }
}

class MikojiLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => [
        '/mikoji',
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(key: ValueKey("Mikoji"), child: MafiaView()),
      // if (state.uri.pathSegments.contains("heros"))
      //   BeamPage(key: ValueKey("Mafia Heros"), child: MafiaHerosView()),
      ];
  }
}

class MafiaIntroLocation extends BeamLocation<BeamState> {

  @override
  List<Pattern> get pathPatterns => [
    '/mafia',
    '/mafia/heros/*',
    '/mafia/rules/*',
    '/mafia/pick-roles',
    '/mafia/show-roles',
  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(key: ValueKey("Mafia"), child: MafiaView()),
      if (state.uri.pathSegments.contains("heros"))
        BeamPage(key: ValueKey("Mafia Heros"), child: MafiaHerosView()),
        if (state.uri.pathSegments.contains("details"))
          BeamPage(key: ValueKey("Mafia Hero Details"), child: MafiaHeroDetailsView()),
      if (state.uri.pathSegments.contains("pick-roles"))
        BeamPage(key: ValueKey("Mafia Pick Roles"), child: PickRolesView()),
      if (state.uri.pathSegments.contains("show-roles"))
        BeamPage(key: ValueKey("Mafia Show Roles"), child: ShowRolesView()),
    ];
  }
}

class MafiaGameLocation extends BeamLocation<BeamState> {

  @override
  List<Pattern> get pathPatterns => [
    '/mafia/game',
  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(key: ValueKey("Mafia Game"), child: GameView()),
      // if (state.uri.pathSegments.contains("heros"))
      //   BeamPage(key: ValueKey("Mafia Heros"), child: MafiaHerosView()),
    ];
  }
}

class LastStationLocation extends BeamLocation<BeamState> {

  @override
  List<Pattern> get pathPatterns => [
    '/last-station',
    '/last-station/rules',
    '/last-station/heros',
    '/last-station/heros/*',
    '/last-station/events',
    '/last-station/events/*',
  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(key: ValueKey("Last Station"), child: LastStationView()),
      // if (state.uri.pathSegments.contains("rules"))
      //   BeamPage(key: ValueKey("Last Station Rules"), child: LastStationRulesView()),
      if (state.uri.pathSegments.contains("heros"))
        BeamPage(key: ValueKey("Last Station Heros"), child: LastStationHerosView()),
        if (state.uri.pathSegments.contains("heros") && state.uri.pathSegments.contains("details"))
          BeamPage(key: ValueKey("Last Station Hero Details"), child: LastStationHeroDetailsView()),
      if (state.uri.pathSegments.contains("events"))
        BeamPage(key: ValueKey("Last Station Events"), child: LastStationEventsView()),
        if (state.uri.pathSegments.contains("events") && state.uri.pathSegments.contains("details"))
          BeamPage(key: ValueKey("Last Station Event Details"), child: LastStationEventDetailsView()),
    ];
  }
}
