import 'package:freezed_annotation/freezed_annotation.dart';
import '../enums.dart';

part 'clause.freezed.dart';
part 'clause.g.dart';

@freezed
class Clause with _$Clause {
  
  const Clause._();
  const factory Clause.every({
    required int time,
    required int howManyEveryStage,
    @Default(0) int lastStageUsed,
    @Default(0) int stageDone,
  }) = EveryClause;

  const factory Clause.times({
    required int time,
    required int howManyEveryStage,
    @Default(0) int done,
  }) = TimesClause;

  const factory Clause.self({
    required int time,
    @Default(0) int done,
  }) = SelfClause;

  const factory Clause.fromAction({
    required Action action,
  }) = FromActionClause;

  const factory Clause.when({
    required Action action,
  }) = WhenClause;

  const factory Clause.until({
    required Action action,
  }) = UntilClause;

  const factory Clause.from({
    required RoleEnum from,
    required RoleEnum to,
  }) = FromClause;

  const factory Clause.iF({
    List<RoleEnum>? target,
    AbilityType? targetFor,
    required Action action,
  }) = IFClause;

  factory Clause.fromJson(Map<String, dynamic> json) => _$ClauseFromJson(json);
}
