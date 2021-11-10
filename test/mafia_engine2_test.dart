import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_comentator/models/ability/ability.dart';
import 'package:flutter_comentator/models/player/player.dart';
import 'package:flutter_comentator/models/enums.dart';
import 'package:flutter_comentator/core/engine/mafia_engine.dart';
import 'package:flutter_comentator/core/roles.dart';

void main() {
  group("Mafia Engine 2", () {
    late MafiaEngine engine;
    setUp(() async {
      engine = MafiaEngine(players: [
        Player(
          name: "Javad",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Terrorist),
          takingAction: [],
        ),
        Player(
          name: "Mohammadreza",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Nexsus),
          takingAction: [],
        ),
        Player(
          name: "Alireza",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Devoted),
          takingAction: [],
        ),
        Player(
          name: "Ali",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Armor),
          takingAction: [],
        ),
        Player(
          name: "Sina",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Sniper),
          takingAction: [],
        ),
        Player(
          name: "Khashi",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Negotiator),
          takingAction: [],
        ),
        Player(
          name: "Aidin",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Doctor),
          takingAction: [],
        ),
        Player(
          name: "Frshid",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.GunSmith),
          takingAction: [],
        ),
        Player(
          name: "Saed",
          role: mafiaRoles.firstWhere(
              (element) => element.nameEnum == RoleEnum.RoleBlocker),
          takingAction: [],
        ),
        Player(
          name: "Emad",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Detective),
          takingAction: [],
        ),
        Player(
          name: "Ali Zamiri",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Journalist),
          takingAction: [],
        ),
        Player(
          name: "Sohiel",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Cowboy),
          takingAction: [],
        ),
        Player(
          name: "Omid",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.GodFather),
          takingAction: [],
        ),
        Player(
          name: "Ehsan",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Nato),
          takingAction: [],
        ),
        Player(
          name: "Hossien",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Guardian),
          takingAction: [],
        ),
        Player(
          name: "Iman",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Lecter),
          takingAction: [],
        ),
      ]);
    });

    test('Test Example Night 2', () {
      // var save = engine.players[7].role!.abilities[0] as Save;
      engine.markPlayerWithAction(13, 1, 0);
      engine.markPlayerWithAction(1, 14, 0);
      engine.markPlayerWithAction(8, 14, 0);
      engine.markPlayerWithAction(4, 8, 1);
      engine.markPlayerWithAction(1, 12, 0);
      engine.markPlayerWithAction(8, 15, 0);
      // engine.markPlayerWithAction(1, 6, 0);
      engine.markPlayerWithAction(2, 6, 0);
      engine.markPlayerWithAction(3, 6, 0);
      engine.markPlayerWithAction(15, 9, 0);
      engine.markPlayerWithAction(3, 7, 0);
      for (var i = 0; i < engine.players.length; i++) {
        print(
            "Player ${engine.players[i].name} taking actions : ${engine.players[i].takingAction.length}");
      }
      engine.calculateStageActions();
    });

  });
}
