import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../core/mafia_engine.dart';
import '../../models/player/player.dart';
import '../../utils/keys.dart';

class AppController extends GetxController {
  Box conf = Hive.box(DBKeys.hive_config);
  final players = Rx<List<Player>>([]);
  final roles = Rx<List<String>>([]);
  Rx<MafiaEngine> mafiaEngine = Rx<MafiaEngine>(MafiaEngine(players: []));

  @override
  void onInit() async {
    super.onInit();
    print('AppController::onInit');
  }

  close() async {
  }
}
