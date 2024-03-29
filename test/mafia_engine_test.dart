import 'package:mikoji_prison/core/engine/roles.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mikoji_prison/models/ability/ability.dart';
import 'package:mikoji_prison/models/player/player.dart';
import 'package:mikoji_prison/models/enums.dart';
import 'package:mikoji_prison/core/engine/mafia_engine.dart';

void main() {
  group("Mafia Engine", () {
    late MafiaEngine engine;
    setUp(() async {
      engine = MafiaEngine(players: [
        Player(
          name: "Masoud",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.GodFather),
          takingAction: [],
        ),
        Player(
          name: "Amir Hossien",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Citizen),
          takingAction: [],
        ),
        Player(
          name: "Paniz",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Citizen),
          takingAction: [],
        ),
        Player(
          name: "Iman",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Sniper),
          takingAction: [],
        ),
        Player(
          name: "Ali",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Detective),
          takingAction: [],
        ),
        Player(
          name: "Kievan",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Armor),
          takingAction: [],
        ),
        Player(
          name: "Ali",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Journalist),
          takingAction: [],
        ),
        Player(
          name: "Sara",
          role: cityRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Doctor),
          takingAction: [],
        ),
        Player(
          name: "Mohsen",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Mafia),
          takingAction: [],
        ),
        Player(
          name: "Sarvenaz",
          role: mafiaRoles
              .firstWhere((element) => element.nameEnum == RoleEnum.Negotiator),
          takingAction: [],
        ),
      ]);
    });

    // test('Test Mark Player With Ability', () {
    //   var action = StageAction(ability: AbilityType.Save, abilityIndex: 0, from: "Doctor", fromIndex: 7);
    //   engine.markPlayerWithAction(1, 7, 0);
    //   expect(engine.players[1].takingAction, contains(action));
    // });

    test('Test Can Make Action : True', () {
      var save = engine.players[7].role!.abilities[0] as Save;
      expect(engine.canTakeAction(save).value1, true);
    });

    test('Test Can Make Action : False', () {
      var save = engine.players[7].role!.abilities[0] as Save;
      save = save.copyWith(everyClause: save.everyClause!.copyWith(stageDone: 2));
      expect(engine.canTakeAction(save).value1, false);
    });

    test('Test Example Night 1', () {
      // var save = engine.players[7].role!.abilities[0] as Save;
      engine.markPlayerWithAction(5, 0, 0);
      engine.markPlayerWithAction(3, 7, 0);
      engine.markPlayerWithAction(4, 7, 0);
      engine.markPlayerWithAction(5, 4, 0);
      engine.markPlayerWithAction(5, 5, 1);
      for (var i = 0; i < engine.players.length; i++) {
        print(
            "Player ${engine.players[i].name} taking actions : ${engine.players[i].takingAction.length}");
      }
      engine.calculateStageActions();
    });

    test('Test Get Available Ability for Stage', () {
      engine.availableActionForStage();
    });

    test('Test Get MafiaRole Wake Group', () {
      expect(engine.getMafiaWakeOrder(engine.players[3].role!), "none");
      expect(engine.getMafiaWakeOrder(engine.players[8].role!),
          "MafiaWakesGroup.Main");
    });

    test('Test Get Wakes Order for Night Stage', () {
      engine.currentStage = Stage.Night;
      print(engine.availableActionForStage());
    });

    test('Test Get Wakes Order for Vote Stage', () {
      engine.currentStage = Stage.Vote;
      print(engine.availableActionForStage());
    });
  });
}
