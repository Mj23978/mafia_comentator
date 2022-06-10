// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clause.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EveryClause _$$EveryClauseFromJson(Map<String, dynamic> json) =>
    _$EveryClause(
      time: json['time'] as int,
      howManyEveryStage: json['howManyEveryStage'] as int,
      lastStageUsed: json['lastStageUsed'] as int? ?? 0,
      stageDone: json['stageDone'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EveryClauseToJson(_$EveryClause instance) =>
    <String, dynamic>{
      'time': instance.time,
      'howManyEveryStage': instance.howManyEveryStage,
      'lastStageUsed': instance.lastStageUsed,
      'stageDone': instance.stageDone,
      'runtimeType': instance.$type,
    };

_$TimesClause _$$TimesClauseFromJson(Map<String, dynamic> json) =>
    _$TimesClause(
      time: json['time'] as int,
      howManyEveryStage: json['howManyEveryStage'] as int,
      done: json['done'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TimesClauseToJson(_$TimesClause instance) =>
    <String, dynamic>{
      'time': instance.time,
      'howManyEveryStage': instance.howManyEveryStage,
      'done': instance.done,
      'runtimeType': instance.$type,
    };

_$SelfClause _$$SelfClauseFromJson(Map<String, dynamic> json) => _$SelfClause(
      time: json['time'] as int,
      done: json['done'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SelfClauseToJson(_$SelfClause instance) =>
    <String, dynamic>{
      'time': instance.time,
      'done': instance.done,
      'runtimeType': instance.$type,
    };

_$FromActionClause _$$FromActionClauseFromJson(Map<String, dynamic> json) =>
    _$FromActionClause(
      action: $enumDecode(_$ActionEnumMap, json['action']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FromActionClauseToJson(_$FromActionClause instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
      'runtimeType': instance.$type,
    };

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

_$WhenClause _$$WhenClauseFromJson(Map<String, dynamic> json) => _$WhenClause(
      action: $enumDecode(_$ActionEnumMap, json['action']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WhenClauseToJson(_$WhenClause instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
      'runtimeType': instance.$type,
    };

_$UntilClause _$$UntilClauseFromJson(Map<String, dynamic> json) =>
    _$UntilClause(
      action: $enumDecode(_$ActionEnumMap, json['action']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UntilClauseToJson(_$UntilClause instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action],
      'runtimeType': instance.$type,
    };

_$FromClause _$$FromClauseFromJson(Map<String, dynamic> json) => _$FromClause(
      from: $enumDecode(_$RoleEnumEnumMap, json['from']),
      to: $enumDecode(_$RoleEnumEnumMap, json['to']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FromClauseToJson(_$FromClause instance) =>
    <String, dynamic>{
      'from': _$RoleEnumEnumMap[instance.from],
      'to': _$RoleEnumEnumMap[instance.to],
      'runtimeType': instance.$type,
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

_$IFClause _$$IFClauseFromJson(Map<String, dynamic> json) => _$IFClause(
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      targetFor: $enumDecodeNullable(_$AbilityTypeEnumMap, json['targetFor']),
      action: $enumDecode(_$ActionEnumMap, json['action']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IFClauseToJson(_$IFClause instance) =>
    <String, dynamic>{
      'target': instance.target?.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'targetFor': _$AbilityTypeEnumMap[instance.targetFor],
      'action': _$ActionEnumMap[instance.action],
      'runtimeType': instance.$type,
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
