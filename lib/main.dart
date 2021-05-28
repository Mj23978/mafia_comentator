import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'config/theme/themes.dart';
import 'providers/controllers/app_controller.dart';
import 'pages/routes.dart';
import 'pages/not_found/not_found_view.dart';
import 'utils/utils.dart';
import 'utils/logger_utils.dart';
import 'utils/keys.dart';

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
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        unknownRoute: GetPage(name: 'not-found', page: () => NotFound()),
        enableLog: true,
        theme: mDefaultTheme,
        transitionDuration: 300.milliseconds,
        logWriterCallback: Logger.write,
        initialRoute: AppPages.init,
        getPages: AppPages.routes,
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
    conf.put("host", "127.0.0.1");
    conf.put("resolution", "vga");
    conf.put("codec", "vp8");
    conf.put("bandwidth", "256");
    conf.put("displayName", "Guest");
  }
}
