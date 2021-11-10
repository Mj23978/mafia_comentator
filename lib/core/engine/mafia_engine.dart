import 'package:dartz/dartz.dart';

import '../../models/ability/ability.dart';
import '../../models/enums.dart';
import '../../models/player/player.dart';
import '../../models/role/role.dart';
import '../../models/stage_action/stage_action.dart';
import 'roles.dart';

class MafiaEngine {
  List<Player> players;
  Stage currentStage;
  int currentDay;

  MafiaEngine({
    required this.players,
    this.currentDay = 1,
    this.currentStage = Stage.Day,
  });

  void calculateStageActions() {
    var deadPlayers = <int>[];
    var alivePlayers = players.where((element) => element.alive).toList();
    for (var i = 0; i < alivePlayers.length; i++) {
      for (var action in alivePlayers[i].takingAction) {
        if (action.ability == AbilityType.Kill) {
          var kill = alivePlayers[action.fromIndex]
              .role!
              .abilities[action.abilityIndex] as Kill;
          var saved = false;
          var saves = alivePlayers[i]
              .takingAction
              .where((e) => e.ability == AbilityType.Save);
          saves
              .map<MapEntry<String, Ability>>((e) => actionToAbility(e))
              .forEach((e) {
            var save = e.value as Save;
            if (save.saveFrom.contains(Action.Killing) &&
                !kill.cantSaveBy.contains(e.key.split('-'[0]))) {
              saved = true;
            }
          });
          !saved ? deadPlayers.add(i) : null;
        } else if (action.ability == AbilityType.Guess) {
          var resSide = false;
          var guess = alivePlayers[action.fromIndex]
              .role!
              .abilities[action.abilityIndex] as Guess;
          if (guess.what == GuessType.Side) {
            if (alivePlayers[i].role!.nameEnum == RoleEnum.GodFather ||
                alivePlayers[i].role!.runtimeType == CityRole) {
              resSide = false;
              var costRes = calcualteCost(guess, action.fromIndex, i);
              costRes != -1 ? deadPlayers.add(costRes) : null;
            } else {
              resSide = true;
              var costRes = calcualteCost(guess, action.fromIndex, i);
              costRes != -1 ? deadPlayers.add(costRes) : null;
            }
          } else if (guess.what == GuessType.Role) {
            if (action.details["guessedRole"] == alivePlayers[i].roleName) {
              var costRes = calcualteCost(guess, action.fromIndex, i);
              costRes != -1 ? deadPlayers.add(costRes) : null;
            }
          }
          // var changes = players[i]
          //     .takingAction
          //     .where((e) => e.ability == AbilityType.Change)
          //     .map<MapEntry<String, Ability>>((e) => actionToAbility(e));
          // for (var change in changes) {
          //   var c = change.value as Change;
          //   if (c.what == AbilityType.Guess || c.what == AbilityType.All) {
          //     if (c.change == ChangeType.Resault) {
          //       resSide = !resSide;
          //     } else if (c.change == ChangeType.Direction) {
          //       action.details["guessDirection"]
          //     }
          //   }
          // }
        }
      }
    }
    print(deadPlayers.toString());
    players = players.map((e) {
      e.takingAction.clear();
      return e;
    }).toList();
  }

  int calcualteCost(Guess guess, int targetIndex, int hisIndex) {
    if (guess.costIfRight == Cost.Die) {
      if (guess.costOnIfRight == CostOn.Him) {
        return hisIndex;
      } else if (guess.costOnIfRight == CostOn.Target) {
        return targetIndex;
      }
    }
    return -1;
  }

  Tuple2<Map<String, int>, Map<String, int>> availableActionForStage() {
    var orderIndex = <String, int>{};
    var setAbility = <String, int>{};
    var allAbilities = <String, Ability>{};
    var alivePlayers = players.where((element) => element.alive).toList();
    for (var i = 0; i < alivePlayers.length; i++) {
      for (var j = 0; j < alivePlayers[i].role!.abilities.length; j++) {
        if (currentStage == alivePlayers[i].role!.abilities[j].whenS) {
          allAbilities.putIfAbsent(
              '${alivePlayers[i].name}-$i-$j-${getMafiaWakeOrder(alivePlayers[i].role!)}',
              () => alivePlayers[i].role!.abilities[j]);
        }
      }
    }
    for (var entry in allAbilities.entries) {
      var wakeOrder = entry.key.split('-')[3];
      var playerIndex = entry.key.split('-')[1];
      var abilityIndex = entry.key.split('-')[2];
      // print('${entry.key.split('-')[0]}-$abilityIndex');
      if (wakeOrder == 'MafiaWakesGroup.Main' &&
          entry.value.type != AbilityType.Reserve) {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 5);
      }
      if (wakeOrder == 'MafiaWakesGroup.Side' &&
          entry.value.type != AbilityType.Reserve) {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 4);
      }
      if (wakeOrder == 'MafiaWakesGroup.Alone' &&
          entry.value.type != AbilityType.Reserve) {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 6);
      }
      if (entry.value.type == AbilityType.Reserve && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 0);
      }
      if (entry.value.type == AbilityType.Save && wakeOrder == 'none') {
        var save = entry.value as Save;
        if (save.saveFrom.contains(Action.Disable) ||
            save.saveFrom.contains(Action.RoleBlock)) {
          orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 3);
        }
        if (save.validTargets.contains(RoleEnum.Himself)) {
          setAbility.putIfAbsent('$playerIndex-$abilityIndex', () => -1);
        } else {
          orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 7);
        }
      }
      if (entry.value.type == AbilityType.Change && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 1);
      }
      if (entry.value.type == AbilityType.Disable && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 2);
      }
      if (entry.value.type == AbilityType.Kill && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 8);
      }
      if (entry.value.type == AbilityType.Guess && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 9);
      }
      if (entry.value.type == AbilityType.Recrute && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 10);
      }
      if (entry.value.type == AbilityType.Give && wakeOrder == 'none') {
        orderIndex.putIfAbsent('$playerIndex-$abilityIndex', () => 11);
      }
    }
    return Tuple2(orderIndex, setAbility);
  }

  void applyImediateAction() {}

  MapEntry<String, Ability> actionToAbility(StageAction action) {
    return MapEntry('${action.from}-${action.fromIndex}-${action.abilityIndex}',
        players[action.fromIndex].role!.abilities[action.abilityIndex]);
  }

  void markPlayerWithAction(int targetIndex, int playerIndex, int abilityIndex,
      {Map<String, dynamic>? details}) {
    var ability = players[playerIndex].role!.abilities[abilityIndex];
    var res = canTakeAction(ability);
    StageAction? action;
    if (res.value1) {
      players[playerIndex].role!.abilities[abilityIndex] = res.value2;
      action = StageAction(
        from: players[playerIndex].role!.name,
        fromIndex: playerIndex,
        ability: ability.type,
        abilityIndex: abilityIndex,
        details: details ?? {},
      );
      print(res.value2.everyClause);
    }
    action != null ? players[targetIndex].takingAction.add(action) : null;
  }

  String getMafiaWakeOrder(Role role) {
    // if (role.runtimeType == MafiaRole) {
    if (mafiaRoles.any((element) => element.nameEnum == role.nameEnum)) {
      var mafiaRole = role as MafiaRole;
      return mafiaRole.wakesGroup.toString();
    } else {
      return 'none';
    }
  }

  Tuple2<bool, Ability> canTakeAction(Ability ability) {
    var resAbility = ability;
    if (ability.everyClause != null) {
      if (ability.everyClause!.lastStageUsed == currentDay) {
        if (ability.everyClause!.stageDone <
            ability.everyClause!.howManyEveryStage) {
          resAbility = ability.copyWith(
              everyClause: ability.everyClause!
                  .copyWith(stageDone: ability.everyClause!.stageDone + 1));
          return Tuple2<bool, Ability>(true, resAbility);
        }
      } else if (ability.everyClause!.lastStageUsed < currentDay) {
        ability.everyClause!.copyWith(lastStageUsed: currentDay);
        if (ability.everyClause!.stageDone <
            ability.everyClause!.howManyEveryStage) {
          resAbility = ability.copyWith(
              everyClause: ability.everyClause!.copyWith(
                  stageDone: ability.everyClause!.stageDone + 1,
                  lastStageUsed: currentDay));
          return Tuple2<bool, Ability>(true, resAbility);
        }
      }
    } else if (ability.timesClause != null) {
      if (ability.timesClause!.done < ability.timesClause!.howManyEveryStage) {
        resAbility = ability.copyWith(
            timesClause: ability.timesClause!
                .copyWith(done: ability.timesClause!.done + 1));
        return Tuple2<bool, Ability>(true, resAbility);
      }
    }
    print('Action Cant Be Created');
    return Tuple2<bool, Ability>(false, resAbility);
  }

  selectTargetDialog(
    Ability ability,
    Player player,
    List<Player> players,
    void Function(bool, List<Player>, PlayerPickerType, Map<String, dynamic>)
        cantActionFunc,
    void Function(bool, List<Player>, PlayerPickerType, Map<String, dynamic>)
        canActionFunc,
  ) {
    Player? resPlayer;
    var validPlayers = getValidTargets(ability, player);
    var optional = ability.everyClause == null && ability.timesClause != null;
    var canAction = canTakeAction(ability);
    print(canAction);
    var pickerType = PlayerPickerType.Normal;
    Map<String, dynamic> details = {};
    if (optional) {
      if (ability.timesClause!.howManyEveryStage > 1) {
        pickerType =PlayerPickerType.MoreThanOnePlayer;
        details["players_count"] = ability.timesClause!.howManyEveryStage;
      }
    } else {
      if (ability.everyClause!.howManyEveryStage > 1) {
        pickerType =PlayerPickerType.MoreThanOnePlayer;
        details["players_count"] = ability.everyClause!.howManyEveryStage;
      }
    }
    if (!canAction.value1) {
      cantActionFunc(optional, validPlayers, pickerType, details);
    } else {
      canActionFunc(optional, validPlayers, pickerType, details);
    }
  }

  List<Player> getValidTargets(Ability abi, Player player) {
    var validPlayers = <Player>[];
    if (abi.validTargets.contains(RoleEnum.All)) {
      validPlayers.addAll(players);
    }
    if (abi.validTargets.contains(RoleEnum.Himself)) {
      validPlayers.add(player);
    }
    if (abi.validTargets.contains(RoleEnum.ExceptHimself)) {
      validPlayers
          .addAll(players.where((element) => element.name != player.name));
    }
    if (abi.validTargets.contains(RoleEnum.City)) {
      validPlayers.addAll(players.where(
          (element) => cityRoles.any((e) => e.name == element.roleName)));
    }
    if (abi.validTargets.contains(RoleEnum.MafiaSide)) {
      validPlayers.addAll(players.where(
          (element) => mafiaRoles.any((e) => e.name == element.roleName)));
    }
    if (abi.validTargets.contains(RoleEnum.Citizen)) {
      validPlayers.addAll(players
          .where((element) => element.role!.nameEnum == RoleEnum.Citizen));
    }
    if (abi.validTargets.contains(RoleEnum.Armor)) {
      validPlayers.addAll(
          players.where((element) => element.role!.nameEnum == RoleEnum.Armor));
    }
    return validPlayers;
  }
}

enum PlayerPickerType {
  Normal,
  MoreThanOnePlayer,
  PlayerAndGuessType,
}
