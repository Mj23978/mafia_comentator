import 'enums.dart';

class EveryClause {
  final int time;
  final int howManyEveryStage;
  int lastStageUsed;
  int stageDone;

  EveryClause({
    required this.time,
    required this.howManyEveryStage,
    this.lastStageUsed = 0,
    this.stageDone = 0,
  });
}

class TimesClause {
  final int time;
  final int howManyEveryStage;
  int done;

  TimesClause({
    required this.time,
    required this.howManyEveryStage,
    this.done = 0,
  });
}

class FromActionClause {
  final Action action;

  FromActionClause({
    required this.action,
  });
}

class FromClause {
  final RoleEnum from;
  final RoleEnum to;

  FromClause({
    required this.from,
    required this.to,
  });
}

class IFClause {
  List<RoleEnum>? target;
  AbilityType? targetFor;
  Action action;

  IFClause({
    required this.action,
    this.target,
    this.targetFor,
  });
}

class WhenClause {
  final Action action;

  WhenClause({
    required this.action,
  });
}

class UntilClause {
  final Action action;

  UntilClause({
    required this.action,
  });
}

class SelfClause {
  final int howMany;
  final int done;

  SelfClause({
    required this.howMany,
    this.done = 0,
  });
}
