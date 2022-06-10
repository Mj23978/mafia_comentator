// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      name: json['name'] as String,
      takingAction: (json['takingAction'] as List<dynamic>)
          .map((e) => StageAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      selected: json['selected'] as bool? ?? false,
      roleShowed: json['roleShowed'] as bool? ?? false,
      alive: json['alive'] as bool? ?? true,
      votes: (json['votes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const <String, int>{},
      roleName: json['roleName'] as String?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'name': instance.name,
      'takingAction': instance.takingAction,
      'selected': instance.selected,
      'roleShowed': instance.roleShowed,
      'alive': instance.alive,
      'votes': instance.votes,
      'roleName': instance.roleName,
      'role': instance.role,
    };
