// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityRole _$$CityRoleFromJson(Map<String, dynamic> json) => _$CityRole(
      name: json['name'] as String,
      nameEnum: $enumDecode(_$RoleEnumEnumMap, json['nameEnum']),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      appDescription: json['appDescription'] as String? ?? "",
      description: json['description'] as String? ?? "",
      selected: json['selected'] as bool? ?? false,
      wakesAtNight: json['wakesAtNight'] as bool? ?? false,
      count: json['count'] as int? ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CityRoleToJson(_$CityRole instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nameEnum': _$RoleEnumEnumMap[instance.nameEnum],
      'abilities': instance.abilities,
      'appDescription': instance.appDescription,
      'description': instance.description,
      'selected': instance.selected,
      'wakesAtNight': instance.wakesAtNight,
      'count': instance.count,
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

_$MafiaRole _$$MafiaRoleFromJson(Map<String, dynamic> json) => _$MafiaRole(
      name: json['name'] as String,
      nameEnum: $enumDecode(_$RoleEnumEnumMap, json['nameEnum']),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
      appDescription: json['appDescription'] as String? ?? "",
      description: json['description'] as String? ?? "",
      selected: json['selected'] as bool? ?? false,
      wakesAtNight: json['wakesAtNight'] as bool? ?? false,
      count: json['count'] as int? ?? 0,
      wakesGroup:
          $enumDecodeNullable(_$MafiaWakesGroupEnumMap, json['wakesGroup']) ??
              MafiaWakesGroup.Main,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MafiaRoleToJson(_$MafiaRole instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nameEnum': _$RoleEnumEnumMap[instance.nameEnum],
      'abilities': instance.abilities,
      'appDescription': instance.appDescription,
      'description': instance.description,
      'selected': instance.selected,
      'wakesAtNight': instance.wakesAtNight,
      'count': instance.count,
      'wakesGroup': _$MafiaWakesGroupEnumMap[instance.wakesGroup],
      'runtimeType': instance.$type,
    };

const _$MafiaWakesGroupEnumMap = {
  MafiaWakesGroup.Main: 'Main',
  MafiaWakesGroup.Side: 'Side',
  MafiaWakesGroup.Alone: 'Alone',
};
