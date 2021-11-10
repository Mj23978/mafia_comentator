import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'pages/not_found/not_found_view.dart';
import 'pages/routes.dart';
import 'utils/helpers.dart';
import 'utils/keys.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setPathUrlStrategy();
  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
  } else {
    Hive.initFlutter();
  }
  await Hive.openBox(DBKeys.hive_config);
  await Hive.openBox(DBKeys.home_players);
  initConfig();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale("en", "US"), Locale("fa", "IR")],
      path: 'assets/translations',
      fallbackLocale: Locale("en", "US"),
      child: ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final RouteInformationParser<BeamState> parser = BeamerParser();
  final routerDelegate = BeamerDelegate(
      initialPath: '/home',
      locationBuilder: BeamerLocationBuilder(beamLocations: [
        HomeLocation(),
        MafiaIntroLocation(),
        MafiaGameLocation(),
        LastStationLocation(),
      ]),
      listener: (info, delegate) {
        print("[Beamer] ${info.uri}");
      },
      notFoundPage: BeamPage(key: ValueKey("404"), child: NotFoundPage()),
      // guards: [
      //   BeamGuard(
      //     pathPatterns: ['/$firstRoute/$secondRoute'],
      //     check: (_, __) => read(navigationToSecondProvider).state,
      //   ),
      // ],
      );

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
        valueListenable: Hive.box(DBKeys.hive_config).listenable(),
        builder: (context, box, child) {
          // var locale = box.get("local").split("_");
          // print(locale);
          return MaterialApp.router(
            routeInformationParser: parser,
            routerDelegate: routerDelegate,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            // backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate), 
            backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate), 
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              ...context.localizationDelegates,
            ],
            debugShowCheckedModeBanner: false,
            theme: mDefaultTheme,
            // unknownRoute: GetPage(name: 'not-found', page: () => NotFound()),
            // enableLog: true,
            // transitionDuration: 300.milliseconds,
            // logWriterCallback: Logger.write,
            // getPages: AppPages.routes,
          );
        });
  }
}

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: string2Color('#0a0a0a'),
);

initConfig() {
  Box conf = Hive.box(DBKeys.hive_config);
  if (!conf.get("initialized", defaultValue: false)) {
    conf.put("initialized", true);
    conf.put("local", Locale("fa", "IR").toString());
  }
}
