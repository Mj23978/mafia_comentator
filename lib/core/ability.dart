import 'clause.dart';
import 'enums.dart';

abstract class Ability {
  abstract final AbilityType type;
  abstract final Stage when;
  abstract EveryClause? everyClause;
  abstract TimesClause? timesClause;
  // abstract Ability({required this.type});
}

class Save extends Ability {
  @override
  final Stage when;
  final List<Action> saveFrom;
  final SelfClause selfClause;
  final List<RoleEnum> whoWillBeSaved;

  WhenClause? whenClause;
  FromActionClause? fromClause;
  UntilClause? untilClause;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;
  IFClause? ifClause;

  Save({
    required this.saveFrom,
    required this.selfClause,
    required this.whoWillBeSaved,
    required this.when,
    this.everyClause,
    this.whenClause,
    this.timesClause,
    this.untilClause,
    this.ifClause,
    this.fromClause,
  })  : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null),
        assert(everyClause != null ? timesClause == null : true),
        assert(timesClause != null ? everyClause == null : true);

  @override
  AbilityType get type => AbilityType.Save;

}

class Counter extends Ability {
  final RoleEnum whichRoleEnum;
  final AbilityType by;
  final Who onWho;
  @override
  final Stage when;
  final Cost? cost;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;

  Counter({
    required this.whichRoleEnum,
    required this.by,
    required this.onWho,
    required this.when,
    this.cost,
    this.everyClause,
    this.timesClause,
  }) : assert(everyClause != null || timesClause != null);

  @override
  AbilityType get type => AbilityType.Counter;
}

class Recrute extends Ability {
  final List<RoleEnum> validTargets;
  final bool willBeConverted;
  @override
  final Stage when;
  final Cost? costTypeIfNotValid;
  final CostOn? costOnHimOrAll;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;

  Recrute({
    required this.validTargets,
    required this.willBeConverted,
    required this.when,
    this.costOnHimOrAll = CostOn.None,
    this.costTypeIfNotValid,
    this.everyClause,
    this.timesClause,
  }) : assert(everyClause != null || timesClause != null);

  @override
  AbilityType get type => AbilityType.Recrute;
}

class Guess extends Ability {
  final GuessType what;
  @override
  final Stage when;
  final Cost? costIfRight;
  final Cost? costIfWrong;
  final CostOn? costOnIfRight;
  final CostOn? costOnIfWrong;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;
  WhenClause? whenClause;
  FromActionClause? fromClause;
  IFClause? ifClause;
  UntilClause? untilClause;

  Guess({
    required this.what,
    required this.when,
    this.costIfRight,
    this.costIfWrong,
    this.costOnIfRight,
    this.costOnIfWrong,
    this.everyClause,
    this.timesClause,
    this.whenClause,
    this.untilClause,
    this.fromClause,
    this.ifClause,
  }) : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null);

  @override
  AbilityType get type => AbilityType.Guess;
}

class Change extends Ability {
  final ChangeType change;
  final AbilityType what;
  final List<RoleEnum> forWho;
  @override
  final Stage when;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;
  WhenClause? whenClause;
  FromClause? fromClause;
  IFClause? ifClause;
  UntilClause? untilClause;

  Change({
    required this.what,
    required this.forWho,
    required this.when,
    required this.change,
    this.everyClause,
    this.timesClause,
    this.whenClause,
    this.untilClause,
    this.fromClause,
    this.ifClause,
  }) : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null);

  @override
  AbilityType get type => AbilityType.Change;
}

class Kill extends Ability {
  final List<RoleEnum> validTargets;
  final List<RoleEnum> cantSaveBy;
  @override
  final Stage when;
  final Cost? costTypeForKill;
  final Cost? costTypeIfWrong;
  final int effectesAfter;
  final Stage effectesAfterStage;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;
  WhenClause? whenClause;
  IFClause? ifClause;
  UntilClause? untilClause;

  Kill({
    required this.when,
    required this.validTargets,
    required this.effectesAfter,
    required this.effectesAfterStage,
    this.cantSaveBy = const [],
    this.costTypeIfWrong,
    this.costTypeForKill,
    this.everyClause,
    this.timesClause,
    this.whenClause,
    this.untilClause,
    this.ifClause,
  }) : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null);

  @override
  AbilityType get type => AbilityType.Kill;
}

class Disable extends Ability {
  final List<Action> fromActions;
  @override
  final Stage when;
  @override
  EveryClause? everyClause;
  List<RoleEnum> validTargets;
  @override
  TimesClause? timesClause;
  IFClause? ifClause;

  Disable({
    required this.when,
    required this.validTargets,
    required this.fromActions,
    this.everyClause,
    this.timesClause,
    this.ifClause,
  }) : assert(everyClause != null || timesClause != null);

  @override
  AbilityType get type => AbilityType.Disable;
}

class Reserve extends Ability {
  final RoleEnum role;
  final int priority;
  final IFClause? ifClause;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;

  Reserve({
    required this.role,
    required this.priority,
    this.timesClause,
    this.ifClause,
  });

  @override
  AbilityType get type => AbilityType.Reserve;

  @override
  Stage get when => Stage.All;

}

class Give extends Ability {
  final Action action;
  final Stage whenAction;
  @override
  final Stage when;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;
  IFClause? ifClause;

  Give({
    required this.action,
    required this.when,
    required this.whenAction,
    this.everyClause,
    this.timesClause,
    this.ifClause,
  }) : assert(everyClause != null || timesClause != null);

  @override
  AbilityType get type => AbilityType.Give;
}

class Activition extends Ability {
  final Action whenActivates;
  final Who whoGains;
  final AbilityType can;
  @override
  final Stage when;
  @override
  EveryClause? everyClause;
  @override
  TimesClause? timesClause;
  IFClause? ifClause;

  Activition({
    required this.whoGains,
    required this.when,
    required this.can,
    required this.whenActivates,
    this.everyClause,
    this.timesClause,
    this.ifClause,
  }) : assert(everyClause != null || timesClause != null);

  @override
  AbilityType get type => AbilityType.Activation;
}
