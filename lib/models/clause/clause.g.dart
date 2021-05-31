// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clause.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EveryClause _$_$EveryClauseFromJson(Map<String, dynamic> json) {
  return _$EveryClause(
    time: json['time'] as int,
    howManyEveryStage: json['howManyEveryStage'] as int,
    lastStageUsed: json['lastStageUsed'] as int? ?? 0,
    stageDone: json['stageDone'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$EveryClauseToJson(_$EveryClause instance) =>
    <String, dynamic>{
      'time': instance.time,
      'howManyEveryStage': instance.howManyEveryStage,
      'lastStageUsed': instance.lastStageUsed,
      'stageDone': instance.stageDone,
    };

_$TimesClause _$_$TimesClauseFromJson(Map<String, dynamic> json) {
  return _$TimesClause(
    time: json['time'] as int,
    howManyEveryStage: json['howManyEveryStage'] as int,
    done: json['done'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$TimesClauseToJson(_$TimesClause instance) =>
    <String, dynamic>{
      'time': instance.time,
      'howManyEveryStage': instance.howManyEveryStage,
      'done': instance.done,
    };

_$SelfClause _$_$SelfClauseFromJson(Map<String, dynamic> json) {
  return _$SelfClause(
    time: json['time'] as int,
    done: json['done'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$SelfClauseToJson(_$SelfClause instance) =>
    <String, dynamic>{
      'time': instance.time,
      'done': instance.done,
    };

_$FromActionClause _$_$FromActionClauseFromJson(Map<String, dynamic> json) {
  return _$FromActionClause(
    action: _$enumDecode(_$ActionEnumMap, json['action']),
  );
}

Map<String, dynamic> _$_$FromActionClauseToJson(_$FromActionClause instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
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

const _$ActionEnumMap = {
  Action.Killing: 'Killing',
  Action.Silnce: 'Silnce',
  Action.Disable: 'Disable',
  Action.VotingOut: 'VotingOut',
  Action.RoleBlock: 'RoleBlock',
  Action.Talking: 'Talking',
  Action.Voting: 'Voting',
  Action.Die: 'Die',
  Action.GuessedWrong: 'GuessedWrong',
  Action.HisAction: 'HisAction',
  Action.Everything: 'Everything',
  Action.Nothing: 'Nothing',
};

_$WhenClause _$_$WhenClauseFromJson(Map<String, dynamic> json) {
  return _$WhenClause(
    action: _$enumDecode(_$ActionEnumMap, json['action']),
  );
}

Map<String, dynamic> _$_$WhenClauseToJson(_$WhenClause instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
    };

_$UntilClause _$_$UntilClauseFromJson(Map<String, dynamic> json) {
  return _$UntilClause(
    action: _$enumDecode(_$ActionEnumMap, json['action']),
  );
}

Map<String, dynamic> _$_$UntilClauseToJson(_$UntilClause instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
    };

_$FromClause _$_$FromClauseFromJson(Map<String, dynamic> json) {
  return _$FromClause(
    from: _$enumDecode(_$RoleEnumEnumMap, json['from']),
    to: _$enumDecode(_$RoleEnumEnumMap, json['to']),
  );
}

Map<String, dynamic> _$_$FromClauseToJson(_$FromClause instance) =>
    <String, dynamic>{
      'from': _$RoleEnumEnumMap[instance.from],
      'to': _$RoleEnumEnumMap[instance.to],
    };

const _$RoleEnumEnumMap = {
  RoleEnum.Lecter: 'Lecter',
  RoleEnum.Doctor: 'Doctor',
  RoleEnum.Hero: 'Hero',
  RoleEnum.Guardian: 'Guardian',
  RoleEnum.Angel: 'Angel',
  RoleEnum.Armor: 'Armor',
  RoleEnum.Priest: 'Priest',
  RoleEnum.Citizen: 'Citizen',
  RoleEnum.Mafia: 'Mafia',
  RoleEnum.Devoted: 'Devoted',
  RoleEnum.Journalist: 'Journalist',
  RoleEnum.Negotiator: 'Negotiator',
  RoleEnum.Mason: 'Mason',
  RoleEnum.Nato: 'Nato',
  RoleEnum.Hacker: 'Hacker',
  RoleEnum.Detective: 'Detective',
  RoleEnum.Framer: 'Framer',
  RoleEnum.Lawer: 'Lawer',
  RoleEnum.Nexsus: 'Nexsus',
  RoleEnum.StrongMan: 'StrongMan',
  RoleEnum.GodFather: 'GodFather',
  RoleEnum.Sniper: 'Sniper',
  RoleEnum.RoleBlocker: 'RoleBlocker',
  RoleEnum.ProfessionalKiller: 'ProfessionalKiller',
  RoleEnum.Psycho: 'Psycho',
  RoleEnum.Cowboy: 'Cowboy',
  RoleEnum.Silncer: 'Silncer',
  RoleEnum.Soldier: 'Soldier',
  RoleEnum.Nurse: 'Nurse',
  RoleEnum.Deputy: 'Deputy',
  RoleEnum.GunSmith: 'GunSmith',
  RoleEnum.Terrorist: 'Terrorist',
  RoleEnum.Mistress: 'Mistress',
  RoleEnum.Bomber: 'Bomber',
  RoleEnum.All: 'All',
  RoleEnum.City: 'City',
  RoleEnum.MafiaSide: 'MafiaSide',
  RoleEnum.None: 'None',
  RoleEnum.Himself: 'Himself',
  RoleEnum.ExceptHimself: 'ExceptHimself',
  RoleEnum.New: 'New',
  RoleEnum.PickedPlayer: 'PickedPlayer',
};

_$IFClause _$_$IFClauseFromJson(Map<String, dynamic> json) {
  return _$IFClause(
    target: (json['target'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    targetFor: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['targetFor']),
    action: _$enumDecode(_$ActionEnumMap, json['action']),
  );
}

Map<String, dynamic> _$_$IFClauseToJson(_$IFClause instance) =>
    <String, dynamic>{
      'target': instance.target?.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'targetFor': _$AbilityTypeEnumMap[instance.targetFor],
      'action': _$ActionEnumMap[instance.action],
    };

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
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
