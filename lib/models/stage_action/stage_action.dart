import 'package:freezed_annotation/freezed_annotation.dart';
import '../enums.dart';

part 'stage_action.freezed.dart';
part 'stage_action.g.dart';

@freezed
class StageAction with _$StageAction {
  
  const StageAction._();
  const factory StageAction({
    required String from,
    required int fromIndex,
    required int abilityIndex,
    required AbilityType ability,
    @Default(const {}) Map<String, dynamic> details,
  }) = _StageAction;

  factory StageAction.fromJson(Map<String, dynamic> json) =>
      _$StageActionFromJson(json);
}
