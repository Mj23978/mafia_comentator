// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ability _$$_AbilityFromJson(Map<String, dynamic> json) => _$_Ability(
      type: $enumDecode(_$AbilityTypeEnumMap, json['type']),
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RoleEnumEnumMap, e))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AbilityToJson(_$_Ability instance) =>
    <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
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

_$Save _$$SaveFromJson(Map<String, dynamic> json) => _$Save(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Save,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      saveFrom: (json['saveFrom'] as List<dynamic>)
          .map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      selfClause:
          SelfClause.fromJson(json['selfClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      whenClause: json['whenClause'] == null
          ? null
          : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
      fromClause: json['fromClause'] == null
          ? null
          : FromActionClause.fromJson(
              json['fromClause'] as Map<String, dynamic>),
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SaveToJson(_$Save instance) => <String, dynamic>{
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

_$Counter _$$CounterFromJson(Map<String, dynamic> json) => _$Counter(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Counter,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      by: $enumDecode(_$AbilityTypeEnumMap, json['by']),
      onWho: $enumDecode(_$WhoEnumMap, json['onWho']),
      cost: $enumDecodeNullable(_$CostEnumMap, json['cost']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CounterToJson(_$Counter instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'by': _$AbilityTypeEnumMap[instance.by],
      'onWho': _$WhoEnumMap[instance.onWho],
      'cost': _$CostEnumMap[instance.cost],
      'runtimeType': instance.$type,
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

_$Recrute _$$RecruteFromJson(Map<String, dynamic> json) => _$Recrute(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Recrute,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      willBeConverted: json['willBeConverted'] as bool,
      costOnHimOrAll:
          $enumDecodeNullable(_$CostOnEnumMap, json['costOnHimOrAll']) ??
              CostOn.None,
      costTypeIfNotValid:
          $enumDecodeNullable(_$CostEnumMap, json['costTypeIfNotValid']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RecruteToJson(_$Recrute instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'willBeConverted': instance.willBeConverted,
      'costOnHimOrAll': _$CostOnEnumMap[instance.costOnHimOrAll],
      'costTypeIfNotValid': _$CostEnumMap[instance.costTypeIfNotValid],
      'runtimeType': instance.$type,
    };

const _$CostOnEnumMap = {
  CostOn.Him: 'Him',
  CostOn.All: 'All',
  CostOn.None: 'None',
  CostOn.Target: 'Target',
};

_$Guess _$$GuessFromJson(Map<String, dynamic> json) => _$Guess(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Guess,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      what: $enumDecode(_$GuessTypeEnumMap, json['what']),
      costIfRight: $enumDecodeNullable(_$CostEnumMap, json['costIfRight']),
      costIfWrong: $enumDecodeNullable(_$CostEnumMap, json['costIfWrong']),
      costOnIfRight:
          $enumDecodeNullable(_$CostOnEnumMap, json['costOnIfRight']),
      costOnIfWrong:
          $enumDecodeNullable(_$CostOnEnumMap, json['costOnIfWrong']),
      whenClause: json['whenClause'] == null
          ? null
          : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
      fromClause: json['fromClause'] == null
          ? null
          : FromActionClause.fromJson(
              json['fromClause'] as Map<String, dynamic>),
      ifClause: json['ifClause'] == null
          ? null
          : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
      untilClause: json['untilClause'] == null
          ? null
          : UntilClause.fromJson(json['untilClause'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GuessToJson(_$Guess instance) => <String, dynamic>{
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
      'runtimeType': instance.$type,
    };

const _$GuessTypeEnumMap = {
  GuessType.Role: 'Role',
  GuessType.Side: 'Side',
};

_$Change _$$ChangeFromJson(Map<String, dynamic> json) => _$Change(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Change,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      what: $enumDecode(_$AbilityTypeEnumMap, json['what']),
      change: $enumDecode(_$ChangeTypeEnumMap, json['change']),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChangeToJson(_$Change instance) => <String, dynamic>{
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
      'runtimeType': instance.$type,
    };

const _$ChangeTypeEnumMap = {
  ChangeType.Resault: 'Resault',
  ChangeType.Direction: 'Direction',
};

_$Kill _$$KillFromJson(Map<String, dynamic> json) => _$Kill(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Kill,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      effectesAfter: json['effectesAfter'] as int,
      effectesAfterStage:
          $enumDecode(_$StageEnumMap, json['effectesAfterStage']),
      cantSaveBy: (json['cantSaveBy'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RoleEnumEnumMap, e))
              .toList() ??
          const [],
      costTypeForKill:
          $enumDecodeNullable(_$CostEnumMap, json['costTypeForKill']),
      costTypeIfWrong:
          $enumDecodeNullable(_$CostEnumMap, json['costTypeIfWrong']),
      whenClause: json['whenClause'] == null
          ? null
          : WhenClause.fromJson(json['whenClause'] as Map<String, dynamic>),
      ifClause: json['ifClause'] == null
          ? null
          : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
      untilClause: json['untilClause'] == null
          ? null
          : UntilClause.fromJson(json['untilClause'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$KillToJson(_$Kill instance) => <String, dynamic>{
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
      'runtimeType': instance.$type,
    };

_$Disable _$$DisableFromJson(Map<String, dynamic> json) => _$Disable(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Disable,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      fromActions: (json['fromActions'] as List<dynamic>)
          .map((e) => $enumDecode(_$ActionEnumMap, e))
          .toList(),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      ifClause: json['ifClause'] == null
          ? null
          : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DisableToJson(_$Disable instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'fromActions':
          instance.fromActions.map((e) => _$ActionEnumMap[e]).toList(),
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'ifClause': instance.ifClause,
      'runtimeType': instance.$type,
    };

_$Activation _$$ActivationFromJson(Map<String, dynamic> json) => _$Activation(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Activation,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RoleEnumEnumMap, e))
              .toList() ??
          const [],
      whenActivates: $enumDecode(_$ActionEnumMap, json['whenActivates']),
      whoGains: $enumDecode(_$WhoEnumMap, json['whoGains']),
      can: $enumDecode(_$AbilityTypeEnumMap, json['can']),
      ifClause: json['ifClause'] == null
          ? null
          : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActivationToJson(_$Activation instance) =>
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
      'runtimeType': instance.$type,
    };

_$Give _$$GiveFromJson(Map<String, dynamic> json) => _$Give(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Give,
      whenS: $enumDecode(_$StageEnumMap, json['whenS']),
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumEnumMap, e))
          .toList(),
      action: $enumDecode(_$ActionEnumMap, json['action']),
      whenAction: $enumDecode(_$StageEnumMap, json['whenAction']),
      ifClause: json['ifClause'] == null
          ? null
          : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GiveToJson(_$Give instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'action': _$ActionEnumMap[instance.action],
      'whenAction': _$StageEnumMap[instance.whenAction],
      'ifClause': instance.ifClause,
      'runtimeType': instance.$type,
    };

_$Reserve _$$ReserveFromJson(Map<String, dynamic> json) => _$Reserve(
      type: $enumDecodeNullable(_$AbilityTypeEnumMap, json['type']) ??
          AbilityType.Reserve,
      whenS: $enumDecodeNullable(_$StageEnumMap, json['whenS']) ?? Stage.All,
      everyClause: json['everyClause'] == null
          ? null
          : EveryClause.fromJson(json['everyClause'] as Map<String, dynamic>),
      timesClause: json['timesClause'] == null
          ? null
          : TimesClause.fromJson(json['timesClause'] as Map<String, dynamic>),
      validTargets: (json['validTargets'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$RoleEnumEnumMap, e))
              .toList() ??
          const [],
      role: $enumDecode(_$RoleEnumEnumMap, json['role']),
      priority: json['priority'] as int,
      ifClause: json['ifClause'] == null
          ? null
          : IFClause.fromJson(json['ifClause'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReserveToJson(_$Reserve instance) => <String, dynamic>{
      'type': _$AbilityTypeEnumMap[instance.type],
      'whenS': _$StageEnumMap[instance.whenS],
      'everyClause': instance.everyClause,
      'timesClause': instance.timesClause,
      'validTargets':
          instance.validTargets.map((e) => _$RoleEnumEnumMap[e]).toList(),
      'role': _$RoleEnumEnumMap[instance.role],
      'priority': instance.priority,
      'ifClause': instance.ifClause,
      'runtimeType': instance.$type,
    };
