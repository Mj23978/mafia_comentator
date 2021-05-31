// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StageAction _$_$_StageActionFromJson(Map<String, dynamic> json) {
  return _$_StageAction(
    from: json['from'] as String,
    fromIndex: json['fromIndex'] as int,
    abilityIndex: json['abilityIndex'] as int,
    ability: _$enumDecode(_$AbilityTypeEnumMap, json['ability']),
    details: json['details'] as Map<String, dynamic>? ?? {},
  );
}

Map<String, dynamic> _$_$_StageActionToJson(_$_StageAction instance) =>
    <String, dynamic>{
      'from': instance.from,
      'fromIndex': instance.fromIndex,
      'abilityIndex': instance.abilityIndex,
      'ability': _$AbilityTypeEnumMap[instance.ability],
      'details': instance.details,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

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
