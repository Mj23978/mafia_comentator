// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StageAction _$$_StageActionFromJson(Map<String, dynamic> json) =>
    _$_StageAction(
      from: json['from'] as String,
      fromIndex: json['fromIndex'] as int,
      abilityIndex: json['abilityIndex'] as int,
      ability: $enumDecode(_$AbilityTypeEnumMap, json['ability']),
      details: json['details'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$_StageActionToJson(_$_StageAction instance) =>
    <String, dynamic>{
      'from': instance.from,
      'fromIndex': instance.fromIndex,
      'abilityIndex': instance.abilityIndex,
      'ability': _$AbilityTypeEnumMap[instance.ability],
      'details': instance.details,
    };

const _$AbilityTypeEnumMap = {
  AbilityType.Save: 'Save',
  AbilityType.RoleBlock: 'RoleBlock',
  AbilityType.Kill: 'Kill',
  AbilityType.Activation: 'Activation',
  AbilityType.Change: 'Change',
  AbilityType.Recrute: 'Recrute',
  AbilityType.Guess: 'Guess',
  AbilityType.Counter: 'Counter',
  AbilityType.Disable: 'Disable',
  AbilityType.Reserve: 'Reserve',
  AbilityType.Give: 'Give',
  AbilityType.All: 'All',
  AbilityType.Nothing: 'Nothing',
};
