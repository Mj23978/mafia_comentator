import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'config/localization/translations.dart';
import 'config/theme/themes.dart';
import 'pages/not_found/not_found_view.dart';
import 'pages/routes.dart';
import 'providers/controllers/app_controller.dart';
import 'utils/keys.dart';
import 'utils/logger_utils.dart';
import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
  Get.put(AppController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      defaultThemeId: "light_theme",
      themes: <AppTheme>[
        AppTheme.light(id: "light_theme"),
        AppTheme.dark(id: "dark_theme"),
        firstCustomTheme(),
        secondCustomTheme(),
      ],
      child: ValueListenableBuilder<Box>(
        valueListenable: Hive.box(DBKeys.hive_config).listenable(),
        builder: (context, box, child) {
          var locale = box.get("local").split("_");
          print(locale);
          return GetMaterialApp(
            locale: Locale(locale[0], locale[1]),
            fallbackLocale: Locale("en", "US"),
            supportedLocales: [Locale("en", "US"), Locale("fa", "IR")],
            translations: AppStrings(),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            unknownRoute: GetPage(name: 'not-found', page: () => NotFound()),
            enableLog: true,
            theme: mDefaultTheme,
            transitionDuration: 300.milliseconds,
            logWriterCallback: Logger.write,
            initialRoute: AppPages.init,
            getPages: AppPages.routes,
          );
        }
      ),
    );
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
