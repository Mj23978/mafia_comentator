import 'ability.dart';
import 'clause.dart';
import 'enums.dart';

abstract class Role {
  abstract String name;
  abstract RoleEnum nameEnum;
  abstract String description;
  abstract String appDescription;
  abstract List<Ability> abilities;
  abstract bool selected;
  abstract bool wakesAtNight;
  abstract int count;
}

class CityRole with Role {
  @override
  String name;
  @override
  List<Ability> abilities;
  @override
  String appDescription;
  @override
  String description;
  @override
  RoleEnum nameEnum;
  @override
  bool selected;
  @override
  bool wakesAtNight;
  @override
  int count;

  CityRole({
    required this.name,
    required this.nameEnum,
    required this.abilities,
    this.description = "",
    this.appDescription = "",
    this.selected = false,
    this.wakesAtNight = false,
    this.count = 0,
  });
}

class MafiaRole with Role {
  @override
  String name;
  @override
  List<Ability> abilities;
  @override
  String appDescription;
  @override
  String description;
  @override
  RoleEnum nameEnum;
  @override
  bool selected;
  @override
  bool wakesAtNight;
  @override
  int count;
  MafiaWakesGroup wakesGroup;

  MafiaRole({
    required this.name,
    required this.nameEnum,
    required this.abilities,
    this.wakesGroup = MafiaWakesGroup.Main,
    this.description = "",
    this.appDescription = "",
    this.selected = false,
    this.wakesAtNight = false,
    this.count = 0,
  });
}

final List<CityRole> cityRoles = [
  CityRole(
    nameEnum: RoleEnum.Citizen,
    name: "Citizen",
    abilities: [],
  ),
  CityRole(
    name: "Doctor",
    nameEnum: RoleEnum.Doctor,
    abilities: [
      Save(
        saveFrom: [Action.Killing],
        selfClause: SelfClause(howMany: 2),
        whoWillBeSaved: [RoleEnum.All],
        when: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 2),
      ),
    ],
  ),
  CityRole(
    name: "Hero",
    nameEnum: RoleEnum.Doctor,
    abilities: [
      Save(
        saveFrom: [Action.Everything],
        selfClause: SelfClause(howMany: 1),
        whoWillBeSaved: [RoleEnum.All],
        when: Stage.Night,
        everyClause: EveryClause(time: 2, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "Guardian",
    nameEnum: RoleEnum.Guardian,
    abilities: [
      Save(
        saveFrom: [Action.RoleBlock],
        selfClause: SelfClause(howMany: 0),
        whoWillBeSaved: [RoleEnum.All],
        when: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 2),
        ifClause: IFClause(
          action: Action.HisAction,
          target: [RoleEnum.MafiaSide],
          targetFor: AbilityType.RoleBlock,
        ),
      ),
      Save(
        saveFrom: [Action.VotingOut],
        selfClause: SelfClause(howMany: -1),
        whoWillBeSaved: [RoleEnum.Himself],
        when: Stage.Vote,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "Armor",
    nameEnum: RoleEnum.Armor,
    abilities: [
      Save(
        saveFrom: [Action.VotingOut],
        selfClause: SelfClause(howMany: -1),
        whoWillBeSaved: [RoleEnum.Himself],
        when: Stage.Vote,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
      Save(
        saveFrom: [Action.Killing],
        selfClause: SelfClause(howMany: -1),
        whoWillBeSaved: [RoleEnum.Himself],
        when: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "Priest",
    nameEnum: RoleEnum.Priest,
    abilities: [
      Save(
        saveFrom: [Action.Disable, Action.Silnce],
        selfClause: SelfClause(howMany: -1),
        whoWillBeSaved: [RoleEnum.All],
        when: Stage.Night,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "Fadayi",
    nameEnum: RoleEnum.Fadayi,
    abilities: [
      Counter(
        whichRoleEnum: RoleEnum.Terrorist,
        by: AbilityType.Save,
        onWho: Who.Target,
        when: Stage.Day,
        cost: Cost.Die,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "Journalist",
    nameEnum: RoleEnum.Journalist,
    abilities: [
      Counter(
        whichRoleEnum: RoleEnum.Negotiator,
        by: AbilityType.Guess,
        onWho: Who.Target,
        when: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Mason,
    name: "Mason",
    abilities: [
      Recrute(
        validTargets: [RoleEnum.Citizen, RoleEnum.Armor],
        willBeConverted: true,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
        costOnHimOrAll: CostOn.All,
        costTypeIfNotValid: Cost.Die,
        when: Stage.Night,
      ),
      Reserve(role: RoleEnum.GodFather, priority: 2),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Hacker,
    name: "Hacker",
    abilities: [
      Guess(
          what: GuessType.Side,
          when: Stage.Night,
          timesClause: TimesClause(time: 1, howManyEveryStage: 3),
          ifClause:
              IFClause(action: Action.HisAction, target: [RoleEnum.MafiaSide])),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Detective,
    name: "Detective",
    abilities: [
      Guess(
        what: GuessType.Side,
        when: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Nexsus,
    name: "Nexsus",
    abilities: [
      Change(
        what: AbilityType.All,
        forWho: [RoleEnum.Himself],
        when: Stage.Night,
        change: ChangeType.Direction,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Sniper,
    name: "Sniper",
    abilities: [
      Kill(
        when: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.MafiaSide],
        timesClause: TimesClause(time: 2, howManyEveryStage: 1),
        costTypeIfWrong: Cost.Die,
      ),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Psycho,
    name: "Psycho",
    abilities: [
      Kill(
        when: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Cowboy,
    name: "Cowboy",
    abilities: [
      Kill(
        when: Stage.Day,
        effectesAfter: 0,
        effectesAfterStage: Stage.Day,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        costTypeForKill: Cost.Die,
      ),
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Soldier,
    name: "Soldier",
    abilities: [Reserve(role: RoleEnum.Sniper, priority: 0)],
  ),
  CityRole(
    nameEnum: RoleEnum.Deputy,
    name: "Deputy",
    abilities: [Reserve(role: RoleEnum.Detective, priority: 0)],
  ),
  CityRole(
    nameEnum: RoleEnum.Nurse,
    name: "Nurse",
    abilities: [Reserve(role: RoleEnum.Doctor, priority: 0)],
  ),
  CityRole(
    nameEnum: RoleEnum.GunSmith,
    name: "GunSmith",
    abilities: [
      Give(
        action: Action.Killing,
        when: Stage.Night,
        whenAction: Stage.Day,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      )
    ],
  ),
  CityRole(
    nameEnum: RoleEnum.Bomber,
    name: "Bomber",
    abilities: [
      Activition(
        whoGains: Who.Himself,
        whenActivates: Action.VotingOut,
        can: AbilityType.Kill,
        when: Stage.Day,
        timesClause: TimesClause(time: 1, howManyEveryStage: 2),
      ),
    ],
  ),
];

final List<MafiaRole> mafiaRoles = [
  MafiaRole(
    nameEnum: RoleEnum.Mafia,
    name: "Mafia",
    wakesAtNight: true,
    wakesGroup: MafiaWakesGroup.Main,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
    ],
  ),
  MafiaRole(
    name: "Lecter",
    wakesAtNight: true,
    wakesGroup: MafiaWakesGroup.Main,
    nameEnum: RoleEnum.Lecter,
    abilities: [
      Save(
        saveFrom: [Action.Killing],
        selfClause: SelfClause(howMany: 1),
        whoWillBeSaved: [RoleEnum.MafiaSide],
        when: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
      Reserve(role: RoleEnum.GodFather, priority: 2),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Negotiator,
    name: "Negotiator",
    wakesGroup: MafiaWakesGroup.Main,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Recrute(
        validTargets: [RoleEnum.Citizen, RoleEnum.Armor],
        willBeConverted: true,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        when: Stage.Night,
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Nato,
    name: "Nato",
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Guess(
        what: GuessType.Role,
        when: Stage.Night,
        costIfRight: Cost.Die,
        costOnIfRight: CostOn.Target,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Framer,
    name: "Framer",
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Change(
        what: AbilityType.Guess,
        forWho: [RoleEnum.All],
        when: Stage.Night,
        change: ChangeType.Resault,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Lawer,
    name: "Lawer",
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Change(
        what: AbilityType.Guess,
        forWho: [RoleEnum.All],
        when: Stage.Night,
        change: ChangeType.Resault,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.GodFather,
    name: "GodFather",
    abilities: [
      Kill(
        when: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.StrongMan,
    name: "StrongMan",
    wakesGroup: MafiaWakesGroup.Side,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 3),
      Kill(
        when: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        cantSaveBy: [RoleEnum.Doctor, RoleEnum.Nurse, RoleEnum.Lecter],
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.ProfessionalKiller,
    name: "Professional Killer",
    wakesGroup: MafiaWakesGroup.Side,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 3),
      Kill(
        when: Stage.Night,
        effectesAfter: 2,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        cantSaveBy: [RoleEnum.Doctor, RoleEnum.Nurse, RoleEnum.Lecter],
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Silncer,
    name: "Silncer",
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Disable(
        fromActions: [Action.Voting, Action.Talking],
        when: Stage.Night,
        validTargets: [RoleEnum.All],
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.RoleBlocker,
    name: "Role Blocker",
    wakesGroup: MafiaWakesGroup.Side,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 3),
      Disable(
        fromActions: [Action.HisAction],
        when: Stage.Night,
        validTargets: [RoleEnum.City],
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Terrorist,
    name: "Terrorist",
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Activition(
        whoGains: Who.Himself,
        whenActivates: Action.VotingOut,
        can: AbilityType.Kill,
        when: Stage.Day,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      )
    ],
  ),
  MafiaRole(
    nameEnum: RoleEnum.Mistress,
    name: "Mistress",
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 0),
      Activition(
        whoGains: Who.Himself,
        whenActivates: Action.Die,
        can: AbilityType.Kill,
        when: Stage.Night,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      )
    ],
  ),
];
