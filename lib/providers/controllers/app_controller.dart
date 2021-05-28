import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../core/player.dart';
import '../../utils/keys.dart';

class AppController extends GetxController {
  Box conf = Hive.box(DBKeys.hive_config);
  final players = Rx<List<Player>>([]);

  @override
  void onInit() async {
    super.onInit();
    print('AppController::onInit');
  }

  close() async {
  }
}
