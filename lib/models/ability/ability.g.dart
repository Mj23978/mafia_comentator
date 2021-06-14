// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ability _$_$_AbilityFromJson(Map<String, dynamic> json) {
  return _$_Ability(
    type: _$enumDecode(_$AbilityTypeEnumMap, json['type']),
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
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

const _$StageEnumMap = {
  Stage.Day: 'Day',
  Stage.Vote: 'Vote',
  Stage.Night: 'Night',
  Stage.All: 'All',
  Stage.BeforeVote: 'BeforeVote',
  Stage.AfterVote: 'AfterVote',
  Stage.None: 'None',
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

_$Save _$_$SaveFromJson(Map<String, dynamic> json) {
  return _$Save(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Save,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    saveFrom: (json['saveFrom'] as List<dynamic>)
        .map((e) => _$enumDecode(_$ActionEnumMap, e))
        .toList(),
    selfClause: SelfClause.fromJson(json['selfClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    whenClause: json['whenClause'] == null
        ? null
        : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
    fromClause: json['fromClause'] == null
        ? null
        : FromActionClause.fromJson(json['fromClause'] as Map<String, dynamic>),
    untilClause: json['untilClause'] == null
        ? null
        : UntilClause.fromJson(json['untilClause'] as Map<String, dynamic>),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$SaveToJson(_$Save instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'saveFrom': instance.saveFrom.map((e) => _$ActionEnumMap[e]).toList(),
      'selfClause': instance.selfClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'whenClause': instance.whenClause,
      'fromClause': instance.fromClause,
      'untilClause': instance.untilClause,
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'ifClause': instance.ifClause,
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

_$Counter _$_$CounterFromJson(Map<String, dynamic> json) {
  return _$Counter(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Counter,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    by: _$enumDecode(_$AbilityTypeEnumMap, json['by']),
    onWho: _$enumDecode(_$WhoEnumMap, json['onWho']),
    cost: _$enumDecodeNullable(_$CostEnumMap, json['cost']),
  );
}

Map<String, dynamic> _$_$CounterToJson(_$Counter instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'by': _$AbilityTypeEnumMap[instance.by],
      'onWho': _$WhoEnumMap[instance.onWho],
      'cost': _$CostEnumMap[instance.cost],
    };

const _$WhoEnumMap = {
  Who.Himself: 'Himself',
  Who.Target: 'Target',
  Who.Counter: 'Counter',
  Who.All: 'All',
  Who.HisTeam: 'HisTeam',
};

const _$CostEnumMap = {
  Cost.Die: 'Die',
  Cost.RoleBlock: 'RoleBlock',
  Cost.Nothing: 'Nothing',
};

_$Recrute _$_$RecruteFromJson(Map<String, dynamic> json) {
  return _$Recrute(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Recrute,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    willBeConverted: json['willBeConverted'] as bool,
    costOnHimOrAll:
        _$enumDecodeNullable(_$CostOnEnumMap, json['costOnHimOrAll']) ??
            CostOn.None,
    costTypeIfNotValid:
        _$enumDecodeNullable(_$CostEnumMap, json['costTypeIfNotValid']),
  );
}

Map<String, dynamic> _$_$RecruteToJson(_$Recrute instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'willBeConverted': instance.willBeConverted,
      'costOnHimOrAll': _$CostOnEnumMap[instance.costOnHimOrAll],
      'costTypeIfNotValid': _$CostEnumMap[instance.costTypeIfNotValid],
    };

const _$CostOnEnumMap = {
  CostOn.Him: 'Him',
  CostOn.All: 'All',
  CostOn.None: 'None',
  CostOn.Target: 'Target',
};

_$Guess _$_$GuessFromJson(Map<String, dynamic> json) {
  return _$Guess(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Guess,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    what: _$enumDecode(_$GuessTypeEnumMap, json['what']),
    costIfRight: _$enumDecodeNullable(_$CostEnumMap, json['costIfRight']),
    costIfWrong: _$enumDecodeNullable(_$CostEnumMap, json['costIfWrong']),
    costOnIfRight: _$enumDecodeNullable(_$CostOnEnumMap, json['costOnIfRight']),
    costOnIfWrong: _$enumDecodeNullable(_$CostOnEnumMap, json['costOnIfWrong']),
    whenClause: json['whenClause'] == null
        ? null
        : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
    fromClause: json['fromClause'] == null
        ? null
        : FromActionClause.fromJson(json['fromClause'] as Map<String, dynamic>),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
    untilClause: json['untilClause'] == null
        ? null
        : UntilClause.fromJson(json['untilClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$GuessToJson(_$Guess instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'what': _$GuessTypeEnumMap[instance.what],
      'costIfRight': _$CostEnumMap[instance.costIfRight],
      'costIfWrong': _$CostEnumMap[instance.costIfWrong],
      'costOnIfRight': _$CostOnEnumMap[instance.costOnIfRight],
      'costOnIfWrong': _$CostOnEnumMap[instance.costOnIfWrong],
      'whenClause': instance.whenClause,
      'fromClause': instance.fromClause,
      'ifClause': instance.ifClause,
      'untilClause': instance.untilClause,
    };

const _$GuessTypeEnumMap = {
  GuessType.Role: 'Role',
  GuessType.Side: 'Side',
};

_$Change _$_$ChangeFromJson(Map<String, dynamic> json) {
  return _$Change(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Change,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    what: _$enumDecode(_$AbilityTypeEnumMap, json['what']),
    change: _$enumDecode(_$ChangeTypeEnumMap, json['change']),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    whenClause: json['whenClause'] == null
        ? null
        : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
    fromClause: json['fromClause'] == null
        ? null
        : FromClause.fromJson(json['fromClause'] as Map<String, dynamic>),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
    untilClause: json['untilClause'] == null
        ? null
        : UntilClause.fromJson(json['untilClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ChangeToJson(_$Change instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'what': _$AbilityTypeEnumMap[instance.what],
      'change': _$ChangeTypeEnumMap[instance.change],
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'whenClause': instance.whenClause,
      'fromClause': instance.fromClause,
      'ifClause': instance.ifClause,
      'untilClause': instance.untilClause,
    };

const _$ChangeTypeEnumMap = {
  ChangeType.Resault: 'Resault',
  ChangeType.Direction: 'Direction',
};

_$Kill _$_$KillFromJson(Map<String, dynamic> json) {
  return _$Kill(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Kill,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    effectesAfter: json['effectesAfter'] as int,
    effectesAfterStage:
        _$enumDecode(_$StageEnumMap, json['effectesAfterStage']),
    cantSaveBy: (json['cantSaveBy'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
            .toList() ??
        [],
    costTypeForKill:
        _$enumDecodeNullable(_$CostEnumMap, json['costTypeForKill']),
    costTypeIfWrong:
        _$enumDecodeNullable(_$CostEnumMap, json['costTypeIfWrong']),
    whenClause: json['whenClause'] == null
        ? null
        : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
    untilClause: json['untilClause'] == null
        ? null
        : UntilClause.fromJson(json['untilClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$KillToJson(_$Kill instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'effectesAfter': instance.effectesAfter,
      'effectesAfterStage': _$StageEnumMap[instance.effectesAfterStage],
      'cantSaveBy':
          instance.cantSaveBy.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'costTypeForKill': _$CostEnumMap[instance.costTypeForKill],
      'costTypeIfWrong': _$CostEnumMap[instance.costTypeIfWrong],
      'whenClause': instance.whenClause,
      'ifClause': instance.ifClause,
      'untilClause': instance.untilClause,
    };

_$Disable _$_$DisableFromJson(Map<String, dynamic> json) {
  return _$Disable(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Disable,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    fromActions: (json['fromActions'] as List<dynamic>)
        .map((e) => _$enumDecode(_$ActionEnumMap, e))
        .toList(),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$DisableToJson(_$Disable instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'fromActions':
          instance.fromActions.map((e) => _$ActionEnumMap[e]).toList(),
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'ifClause': instance.ifClause,
    };

_$Activation _$_$ActivationFromJson(Map<String, dynamic> json) {
  return _$Activation(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Activation,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
            .toList() ??
        [],
    whenActivates: _$enumDecode(_$ActionEnumMap, json['whenActivates']),
    whoGains: _$enumDecode(_$WhoEnumMap, json['whoGains']),
    can: _$enumDecode(_$AbilityTypeEnumMap, json['can']),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ActivationToJson(_$Activation instance) =>
    <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'whenActivates': _$ActionEnumMap[instance.whenActivates],
      'whoGains': _$WhoEnumMap[instance.whoGains],
      'can': _$AbilityTypeEnumMap[instance.can],
      'ifClause': instance.ifClause,
    };

_$Give _$_$GiveFromJson(Map<String, dynamic> json) {
  return _$Give(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Give,
    whenS: _$enumDecode(_$StageEnumMap, json['whenS']),
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>)
        .map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
        .toList(),
    action: _$enumDecode(_$ActionEnumMap, json['action']),
    whenAction: _$enumDecode(_$StageEnumMap, json['whenAction']),
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$GiveToJson(_$Give instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'action': _$ActionEnumMap[instance.action],
      'whenAction': _$StageEnumMap[instance.whenAction],
      'ifClause': instance.ifClause,
    };

_$Reserve _$_$ReserveFromJson(Map<String, dynamic> json) {
  return _$Reserve(
    type: _$enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
        AbilityType.Reserve,
    whenS: _$enumDecodeNullable(_$StageEnumMap, json['whenS']) ?? Stage.All,
    everyClause: json['everyClause'] == null
        ? null
        : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
    timesClause: json['timesClause'] == null
        ? null
        : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
    validTargets: (json['validTargets'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$RoleEnumEnumMap, e))
            .toList() ??
        [],
    role: _$enumDecode(_$RoleEnumEnumMap, json['role']),
    priority: json['priority'] as int,
    ifClause: json['ifClause'] == null
        ? null
        : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ReserveToJson(_$Reserve instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'role': _$RoleEnumEnumMap[instance.role],
      'priority': instance.priority,
      'ifClause': instance.ifClause,
    };
