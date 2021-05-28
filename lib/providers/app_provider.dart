import 'package:hive/hive.dart';

import '../utils/keys.dart';

class AppProvider {
  Box conf = Hive.box(DBKeys.hive_config);

  close() async {
  }

}
