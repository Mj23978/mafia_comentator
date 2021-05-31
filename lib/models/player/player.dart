import 'package:freezed_annotation/freezed_annotation.dart';

import '../role/role.dart';
import '../stage_action/stage_action.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {

  const Player._();
  const factory Player({
    required String name,
    required List<StageAction> takingAction,
    @Default(false) bool selected,
    @Default(false) bool roleShowed,
    @Default(true) bool alive,
    @Default(const <String,int>{}) Map<String, int> votes,
    String? roleName,
    Role? role,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

}