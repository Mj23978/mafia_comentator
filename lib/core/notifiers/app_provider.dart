import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

import '../../../core/engine/mafia_engine.dart';
import '../../../models/player/player.dart';
import '../../../utils/keys.dart';

class AppProvider extends ChangeNotifier {
  Box conf = Hive.box(DBKeys.hive_config);
  var players = <Player>[];
  var roles = <String>[];
  MafiaEngine mafiaEngine = MafiaEngine(players: []);

  close() async {}

  void setPlayers(List<Player> input) {
    players = input;
    notifyListeners();
  }

  void setRoles(List<String> input) {
    roles = input;
    notifyListeners();
  }

}
