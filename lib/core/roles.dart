import 'package:get/get.dart';

import '../models/ability/ability.dart';
import '../models/clause/clause.dart';
import '../models/enums.dart';
import '../models/role/role.dart';


final List<CityRole> cityRoles = [
  CityRole(
    nameEnum: RoleEnum.Citizen,
    name: "citizen_name".tr,
    description: "citizen_des".tr,
    wakesAtNight: false,
    abilities: [],
  ),
  CityRole(
    name: "doctor_name".tr,
    description: "doctor_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Doctor,
    abilities: [
      Save(
        saveFrom: [Action.Killing],
        selfClause: SelfClause(time: 2),
        validTargets: [RoleEnum.All],
        whenS: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 2),
      ),
    ],
  ),
  CityRole(
    name: "hero_name".tr,
    description: "hero_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Doctor,
    abilities: [
      Save(
        saveFrom: [Action.Everything],
        selfClause: SelfClause(time: 1),
        validTargets: [RoleEnum.All],
        whenS: Stage.Night,
        everyClause: EveryClause(time: 2, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "guardian_name".tr,
    description: "guardian_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Guardian,
    abilities: [
      Save(
        saveFrom: [Action.RoleBlock],
        selfClause: SelfClause(time: 0),
        validTargets: [RoleEnum.All],
        whenS: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 2),
        ifClause: IFClause(
          action: Action.HisAction,
          target: [RoleEnum.MafiaSide],
          targetFor: AbilityType.RoleBlock,
        ),
      ),
      Save(
        saveFrom: [Action.VotingOut],
        selfClause: SelfClause(time: -1),
        validTargets: [RoleEnum.Himself],
        whenS: Stage.Vote,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "armor_name".tr,
    description: "armor_des".tr,
    wakesAtNight: false,
    nameEnum: RoleEnum.Armor,
    abilities: [
      Save(
        saveFrom: [Action.VotingOut],
        selfClause: SelfClause(time: -1),
        validTargets: [RoleEnum.Himself],
        whenS: Stage.Vote,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
      Save(
        saveFrom: [Action.Killing],
        selfClause: SelfClause(time: -1),
        validTargets: [RoleEnum.Himself],
        whenS: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "priest_name".tr,
    description: "priest_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Priest,
    abilities: [
      Save(
        saveFrom: [Action.Disable, Action.Silnce],
        selfClause: SelfClause(time: -1),
        validTargets: [RoleEnum.All],
        whenS: Stage.Night,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "devoted_name".tr,
    description: "devoted_des".tr,
    wakesAtNight: false,
    nameEnum: RoleEnum.Devoted,
    abilities: [
      Counter(
        validTargets: [RoleEnum.Terrorist],
        by: AbilityType.Save,
        onWho: Who.Target,
        whenS: Stage.Day,
        cost: Cost.Die,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "journalist_name".tr,
    description: "journalist_des".tr,
    wakesAtNight: false,
    nameEnum: RoleEnum.Journalist,
    abilities: [
      Counter(
        validTargets: [RoleEnum.Negotiator],
        by: AbilityType.Guess,
        onWho: Who.Target,
        whenS: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "mason_name".tr,
    description: "mason_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Mason,
    abilities: [
      Recrute(
        validTargets: [RoleEnum.Citizen, RoleEnum.Armor],
        willBeConverted: true,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
        costOnHimOrAll: CostOn.All,
        costTypeIfNotValid: Cost.Die,
        whenS: Stage.Night,
      ),
      Reserve(role: RoleEnum.GodFather, priority: 2),
    ],
  ),
  CityRole(
    name: "hacker_name".tr,
    description: "hacker_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Hacker,
    abilities: [
      Guess(
          what: GuessType.Side,
          validTargets: [RoleEnum.All],
          whenS: Stage.Night,
          timesClause: TimesClause(time: 1, howManyEveryStage: 3),
          ifClause:
              IFClause(action: Action.HisAction, target: [RoleEnum.MafiaSide]),),
    ],
  ),
  CityRole(
    name: "detective_name".tr,
    description: "detective_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Detective,
    abilities: [
      Guess(
          validTargets: [RoleEnum.ExceptHimself],
        what: GuessType.Side,
        whenS: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "nexsus_name".tr,
    description: "nexsus_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Nexsus,
    abilities: [
      Change(
        what: AbilityType.All,
        validTargets: [RoleEnum.ExceptHimself],
        whenS: Stage.Night,
        change: ChangeType.Direction,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "sniper_name".tr,
    description: "sniper_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Sniper,
    abilities: [
      Kill(
        whenS: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.MafiaSide],
        timesClause: TimesClause(time: 2, howManyEveryStage: 1),
        costTypeIfWrong: Cost.Die,
      ),
    ],
  ),
  CityRole(
    name: "psycho_name".tr,
    description: "psycho_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Psycho,
    abilities: [
      Kill(
        whenS: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  CityRole(
    name: "cowboy_name".tr,
    description: "cowboy_des".tr,
    wakesAtNight: false,
    nameEnum: RoleEnum.Cowboy,
    abilities: [
      Kill(
        whenS: Stage.Day,
        effectesAfter: 0,
        effectesAfterStage: Stage.Day,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        costTypeForKill: Cost.Die,
      ),
    ],
  ),
  CityRole(
    name: "soldier_name".tr,
    description: "soldier_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Soldier,
    abilities: [Reserve(role: RoleEnum.Sniper, priority: 0)],
  ),
  CityRole(
    name: "deputy_name".tr,
    description: "deputy_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Deputy,
    abilities: [Reserve(role: RoleEnum.Detective, priority: 0)],
  ),
  CityRole(
    name: "nurse_name".tr,
    description: "nurse_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Nurse,
    abilities: [Reserve(role: RoleEnum.Doctor, priority: 0)],
  ),
  CityRole(
    name: "gunsmith_name".tr,
    description: "gunsmith_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.GunSmith,
    abilities: [
      Give(
        action: Action.Killing,
        whenS: Stage.Night,
        validTargets: [RoleEnum.ExceptHimself],
        whenAction: Stage.Day,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      )
    ],
  ),
  CityRole(
    name: "bomber_name".tr,
    description: "bomber_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Bomber,
    abilities: [
      Activation(
        whoGains: Who.Himself,
        whenActivates: Action.VotingOut,
        can: AbilityType.Kill,
        whenS: Stage.Day,
        timesClause: TimesClause(time: 1, howManyEveryStage: 2),
      ),
    ],
  ),
];

final List<MafiaRole> mafiaRoles = [
  MafiaRole(
    name: "mafia_name".tr,
    description: "mafia_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Mafia,
    wakesGroup: MafiaWakesGroup.Main,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
    ],
  ),
  MafiaRole(
    name: "lecter_name".tr,
    description: "lecter_des".tr,
    wakesAtNight: true,
    wakesGroup: MafiaWakesGroup.Main,
    nameEnum: RoleEnum.Lecter,
    abilities: [
      Save(
        saveFrom: [Action.Killing],
        selfClause: SelfClause(time: 1),
        validTargets: [RoleEnum.MafiaSide],
        whenS: Stage.Night,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
      Reserve(role: RoleEnum.GodFather, priority: 2),
    ],
  ),
  MafiaRole(
    name: "negotiator_name".tr,
    description: "negotiator_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Negotiator,
    wakesGroup: MafiaWakesGroup.Main,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Recrute(
        validTargets: [RoleEnum.Citizen, RoleEnum.Armor],
        willBeConverted: true,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        whenS: Stage.Night,
      ),
    ],
  ),
  MafiaRole(
    name: "nato_name".tr,
    description: "nato_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Nato,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Guess(
        what: GuessType.Role,
        whenS: Stage.Night,
        validTargets: [RoleEnum.ExceptHimself],
        costIfRight: Cost.Die,
        costOnIfRight: CostOn.Target,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    name: "framer_name".tr,
    description: "framer_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Framer,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Change(
        what: AbilityType.Guess,
        validTargets: [RoleEnum.All],
        whenS: Stage.Night,
        change: ChangeType.Resault,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    name: "lawer_name".tr,
    description: "lawer_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Lawer,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Change(
        what: AbilityType.Guess,
        validTargets: [RoleEnum.All],
        whenS: Stage.Night,
        change: ChangeType.Resault,
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    name: "godfather_name".tr,
    description: "godfather_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.GodFather,
    abilities: [
      Kill(
        whenS: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    name: "strongman_name".tr,
    description: "strongman_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.StrongMan,
    wakesGroup: MafiaWakesGroup.Side,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 3),
      Kill(
        whenS: Stage.Night,
        effectesAfter: 0,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        cantSaveBy: [RoleEnum.Doctor, RoleEnum.Nurse, RoleEnum.Lecter],
      ),
    ],
  ),
  MafiaRole(
    name: "professional_killer_name".tr,
    description: "professional_killer_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.ProfessionalKiller,
    wakesGroup: MafiaWakesGroup.Side,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 3),
      Kill(
        whenS: Stage.Night,
        effectesAfter: 2,
        effectesAfterStage: Stage.Night,
        validTargets: [RoleEnum.All],
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
        cantSaveBy: [RoleEnum.Doctor, RoleEnum.Nurse, RoleEnum.Lecter],
      ),
    ],
  ),
  MafiaRole(
    name: "silncer_name".tr,
    description: "silncer_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Silncer,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Disable(
        fromActions: [Action.Voting, Action.Talking],
        whenS: Stage.Night,
        validTargets: [RoleEnum.All],
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    name: "roleblocker_name".tr,
    description: "roleblocker_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.RoleBlocker,
    wakesGroup: MafiaWakesGroup.Side,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 3),
      Disable(
        fromActions: [Action.HisAction],
        whenS: Stage.Night,
        validTargets: [RoleEnum.City],
        everyClause: EveryClause(time: 1, howManyEveryStage: 1),
      ),
    ],
  ),
  MafiaRole(
    name: "terrorist_name".tr,
    description: "terrorist_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Terrorist,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 2),
      Activation(
        whoGains: Who.Himself,
        whenActivates: Action.VotingOut,
        can: AbilityType.Kill,
        whenS: Stage.Day,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      )
    ],
  ),
  MafiaRole(
    name: "mistress_name".tr,
    description: "mistress_des".tr,
    wakesAtNight: true,
    nameEnum: RoleEnum.Mistress,
    abilities: [
      Reserve(role: RoleEnum.GodFather, priority: 0),
      Activation(
        whoGains: Who.Himself,
        whenActivates: Action.Die,
        can: AbilityType.Kill,
        whenS: Stage.Night,
        timesClause: TimesClause(time: 1, howManyEveryStage: 1),
      )
    ],
  ),
];
