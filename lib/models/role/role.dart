import 'package:freezed_annotation/freezed_annotation.dart';

import '../ability/ability.dart';
import '../enums.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
class Role with _$Role {

  const Role._();
  const factory Role.city({
    required String name,
    required RoleEnum nameEnum,
    required List<Ability> abilities,
    @Default("") String appDescription,
    @Default("") String description,
    @Default(false) bool selected,
    @Default(false) bool wakesAtNight,
    @Default(0) int count,
  }) = CityRole;

  const factory Role.mafia({
    required String name,
    required RoleEnum nameEnum,
    required List<Ability> abilities,
    @Default("") String appDescription,
    @Default("") String description,
    @Default(false) bool selected,
    @Default(false) bool wakesAtNight,
    @Default(0) int count,
    @Default(MafiaWakesGroup.Main) MafiaWakesGroup wakesGroup,
  }) = MafiaRole;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}