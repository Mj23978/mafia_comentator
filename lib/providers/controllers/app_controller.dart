import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../models/player/player.dart';
import '../../utils/keys.dart';

class AppController extends GetxController {
  Box conf = Hive.box(DBKeys.hive_config);
  final players = Rx<List<Player>>([]);
  final roles = Rx<List<String>>([]);

  @override
  void onInit() async {
    super.onInit();
    print('AppController::onInit');
  }

  close() async {
  }
}
