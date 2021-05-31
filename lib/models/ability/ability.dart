import 'package:freezed_annotation/freezed_annotation.dart';

import '../clause/clause.dart';
import '../enums.dart';

part 'ability.freezed.dart';
part 'ability.g.dart';

@freezed
class Ability with _$Ability {
  const Ability._();
  const factory Ability({
    required AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
  }) = _Ability;

  @Assert(
      "everyClause != null || timesClause != null || whenClause != null || untilClause != null")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.save({
    @Default(AbilityType.Save) AbilityType type,
    required Stage whenS,
    required List<Action> saveFrom,
    required SelfClause selfClause,
    required List<RoleEnum> whoWillBeSaved,
    WhenClause? whenClause,
    FromActionClause? fromClause,
    UntilClause? untilClause,
    EveryClause? everyClause,
    TimesClause? timesClause,
    IFClause? ifClause,
  }) = Save;

  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.counter({
    @Default(AbilityType.Counter) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required RoleEnum whichRoleEnum,
    required AbilityType by,
    required Who onWho,
    Cost? cost,
  }) = Counter;

  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.recrute({
    @Default(AbilityType.Recrute) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required List<RoleEnum> validTargets,
    required bool willBeConverted,
    @Default(CostOn.None) CostOn costOnHimOrAll,
    Cost? costTypeIfNotValid,
  }) = Recrute;

  @Assert(
      "everyClause != null || timesClause != null || whenClause != null || untilClause != null || ifClause != null")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.guess({
    @Default(AbilityType.Guess) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required GuessType what,
    Cost? costIfRight,
    Cost? costIfWrong,
    CostOn? costOnIfRight,
    CostOn? costOnIfWrong,
    WhenClause? whenClause,
    FromActionClause? fromClause,
    IFClause? ifClause,
    UntilClause? untilClause,
  }) = Guess;

  @Assert(
      "everyClause != null || timesClause != null || whenClause != null || untilClause != null || ifClause != null")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.change({
    @Default(AbilityType.Change) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required AbilityType what,
    required ChangeType change,
    required List<RoleEnum> forWho,
    WhenClause? whenClause,
    FromClause? fromClause,
    IFClause? ifClause,
    UntilClause? untilClause,
  }) = Change;

  @Assert(
      "everyClause != null || timesClause != null || whenClause != null || untilClause != null || ifClause != null")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.kill({
    @Default(AbilityType.Kill) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required List<RoleEnum> validTargets,
    required int effectesAfter,
    required Stage effectesAfterStage,
    @Default(const []) List<RoleEnum> cantSaveBy,
    Cost? costTypeForKill,
    Cost? costTypeIfWrong,
    WhenClause? whenClause,
    IFClause? ifClause,
    UntilClause? untilClause,
  }) = Kill;

  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.disable({
    @Default(AbilityType.Disable) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required List<Action> fromActions,
    required List<RoleEnum> validTargets,
    IFClause? ifClause,
  }) = Disable;

  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.activation({
    @Default(AbilityType.Activation) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required Action whenActivates,
    required Who whoGains,
    required AbilityType can,
    IFClause? ifClause,
  }) = Activation;

  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.give({
    @Default(AbilityType.Give) AbilityType type,
    required Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required Action action,
    required Stage whenAction,
    IFClause? ifClause,
  }) = Give;

  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Every Clause with Times Clause")
  @Assert("everyClause != null ? timesClause == null : true",
      "Cant Use Times Clause with Every Clause")
  const factory Ability.reserve({
    @Default(AbilityType.Reserve) AbilityType type,
    @Default(Stage.All) Stage whenS,
    EveryClause? everyClause,
    TimesClause? timesClause,
    required RoleEnum role,
    required int priority,
    IFClause? ifClause,
  }) = Reserve;

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}
