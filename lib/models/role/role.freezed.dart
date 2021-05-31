// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Role _$RoleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'city':
      return CityRole.fromJson(json);
    case 'mafia':
      return MafiaRole.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$RoleTearOff {
  const _$RoleTearOff();

  CityRole city(
      {required String name,
      required RoleEnum nameEnum,
      required List<Ability> abilities,
      String appDescription = "",
      String description = "",
      bool selected = false,
      bool wakesAtNight = false,
      int count = 0}) {
    return CityRole(
      name: name,
      nameEnum: nameEnum,
      abilities: abilities,
      appDescription: appDescription,
      description: description,
      selected: selected,
      wakesAtNight: wakesAtNight,
      count: count,
    );
  }

  MafiaRole mafia(
      {required String name,
      required RoleEnum nameEnum,
      required List<Ability> abilities,
      String appDescription = "",
      String description = "",
      bool selected = false,
      bool wakesAtNight = false,
      int count = 0,
      MafiaWakesGroup wakesGroup = MafiaWakesGroup.Main}) {
    return MafiaRole(
      name: name,
      nameEnum: nameEnum,
      abilities: abilities,
      appDescription: appDescription,
      description: description,
      selected: selected,
      wakesAtNight: wakesAtNight,
      count: count,
      wakesGroup: wakesGroup,
    );
  }

  Role fromJson(Map<String, Object> json) {
    return Role.fromJson(json);
  }
}

/// @nodoc
const $Role = _$RoleTearOff();

/// @nodoc
mixin _$Role {
  String get name => throw _privateConstructorUsedError;
  RoleEnum get nameEnum => throw _privateConstructorUsedError;
  List<Ability> get abilities => throw _privateConstructorUsedError;
  String get appDescription => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  bool get wakesAtNight => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count)
        city,
    required TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count,
            MafiaWakesGroup wakesGroup)
        mafia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count)?
        city,
    TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count,
            MafiaWakesGroup wakesGroup)?
        mafia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityRole value) city,
    required TResult Function(MafiaRole value) mafia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityRole value)? city,
    TResult Function(MafiaRole value)? mafia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res>;
  $Res call(
      {String name,
      RoleEnum nameEnum,
      List<Ability> abilities,
      String appDescription,
      String description,
      bool selected,
      bool wakesAtNight,
      int count});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res> implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  final Role _value;
  // ignore: unused_field
  final $Res Function(Role) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nameEnum = freezed,
    Object? abilities = freezed,
    Object? appDescription = freezed,
    Object? description = freezed,
    Object? selected = freezed,
    Object? wakesAtNight = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnum: nameEnum == freezed
          ? _value.nameEnum
          : nameEnum // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      appDescription: appDescription == freezed
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      wakesAtNight: wakesAtNight == freezed
          ? _value.wakesAtNight
          : wakesAtNight // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $CityRoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory $CityRoleCopyWith(CityRole value, $Res Function(CityRole) then) =
      _$CityRoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      RoleEnum nameEnum,
      List<Ability> abilities,
      String appDescription,
      String description,
      bool selected,
      bool wakesAtNight,
      int count});
}

/// @nodoc
class _$CityRoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements $CityRoleCopyWith<$Res> {
  _$CityRoleCopyWithImpl(CityRole _value, $Res Function(CityRole) _then)
      : super(_value, (v) => _then(v as CityRole));

  @override
  CityRole get _value => super._value as CityRole;

  @override
  $Res call({
    Object? name = freezed,
    Object? nameEnum = freezed,
    Object? abilities = freezed,
    Object? appDescription = freezed,
    Object? description = freezed,
    Object? selected = freezed,
    Object? wakesAtNight = freezed,
    Object? count = freezed,
  }) {
    return _then(CityRole(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnum: nameEnum == freezed
          ? _value.nameEnum
          : nameEnum // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      appDescription: appDescription == freezed
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      wakesAtNight: wakesAtNight == freezed
          ? _value.wakesAtNight
          : wakesAtNight // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CityRole extends CityRole {
  const _$CityRole(
      {required this.name,
      required this.nameEnum,
      required this.abilities,
      this.appDescription = "",
      this.description = "",
      this.selected = false,
      this.wakesAtNight = false,
      this.count = 0})
      : super._();

  factory _$CityRole.fromJson(Map<String, dynamic> json) =>
      _$_$CityRoleFromJson(json);

  @override
  final String name;
  @override
  final RoleEnum nameEnum;
  @override
  final List<Ability> abilities;
  @JsonKey(defaultValue: "")
  @override
  final String appDescription;
  @JsonKey(defaultValue: "")
  @override
  final String description;
  @JsonKey(defaultValue: false)
  @override
  final bool selected;
  @JsonKey(defaultValue: false)
  @override
  final bool wakesAtNight;
  @JsonKey(defaultValue: 0)
  @override
  final int count;

  @override
  String toString() {
    return 'Role.city(name: $name, nameEnum: $nameEnum, abilities: $abilities, appDescription: $appDescription, description: $description, selected: $selected, wakesAtNight: $wakesAtNight, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityRole &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nameEnum, nameEnum) ||
                const DeepCollectionEquality()
                    .equals(other.nameEnum, nameEnum)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.appDescription, appDescription) ||
                const DeepCollectionEquality()
                    .equals(other.appDescription, appDescription)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.wakesAtNight, wakesAtNight) ||
                const DeepCollectionEquality()
                    .equals(other.wakesAtNight, wakesAtNight)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameEnum) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(appDescription) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(wakesAtNight) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  $CityRoleCopyWith<CityRole> get copyWith =>
      _$CityRoleCopyWithImpl<CityRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count)
        city,
    required TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count,
            MafiaWakesGroup wakesGroup)
        mafia,
  }) {
    return city(name, nameEnum, abilities, appDescription, description,
        selected, wakesAtNight, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count)?
        city,
    TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count,
            MafiaWakesGroup wakesGroup)?
        mafia,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(name, nameEnum, abilities, appDescription, description,
          selected, wakesAtNight, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityRole value) city,
    required TResult Function(MafiaRole value) mafia,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityRole value)? city,
    TResult Function(MafiaRole value)? mafia,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CityRoleToJson(this)..['runtimeType'] = 'city';
  }
}

abstract class CityRole extends Role {
  const factory CityRole(
      {required String name,
      required RoleEnum nameEnum,
      required List<Ability> abilities,
      String appDescription,
      String description,
      bool selected,
      bool wakesAtNight,
      int count}) = _$CityRole;
  const CityRole._() : super._();

  factory CityRole.fromJson(Map<String, dynamic> json) = _$CityRole.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  RoleEnum get nameEnum => throw _privateConstructorUsedError;
  @override
  List<Ability> get abilities => throw _privateConstructorUsedError;
  @override
  String get appDescription => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get selected => throw _privateConstructorUsedError;
  @override
  bool get wakesAtNight => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CityRoleCopyWith<CityRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MafiaRoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory $MafiaRoleCopyWith(MafiaRole value, $Res Function(MafiaRole) then) =
      _$MafiaRoleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      RoleEnum nameEnum,
      List<Ability> abilities,
      String appDescription,
      String description,
      bool selected,
      bool wakesAtNight,
      int count,
      MafiaWakesGroup wakesGroup});
}

/// @nodoc
class _$MafiaRoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements $MafiaRoleCopyWith<$Res> {
  _$MafiaRoleCopyWithImpl(MafiaRole _value, $Res Function(MafiaRole) _then)
      : super(_value, (v) => _then(v as MafiaRole));

  @override
  MafiaRole get _value => super._value as MafiaRole;

  @override
  $Res call({
    Object? name = freezed,
    Object? nameEnum = freezed,
    Object? abilities = freezed,
    Object? appDescription = freezed,
    Object? description = freezed,
    Object? selected = freezed,
    Object? wakesAtNight = freezed,
    Object? count = freezed,
    Object? wakesGroup = freezed,
  }) {
    return _then(MafiaRole(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnum: nameEnum == freezed
          ? _value.nameEnum
          : nameEnum // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
      appDescription: appDescription == freezed
          ? _value.appDescription
          : appDescription // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      wakesAtNight: wakesAtNight == freezed
          ? _value.wakesAtNight
          : wakesAtNight // ignore: cast_nullable_to_non_nullable
              as bool,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      wakesGroup: wakesGroup == freezed
          ? _value.wakesGroup
          : wakesGroup // ignore: cast_nullable_to_non_nullable
              as MafiaWakesGroup,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$MafiaRole extends MafiaRole {
  const _$MafiaRole(
      {required this.name,
      required this.nameEnum,
      required this.abilities,
      this.appDescription = "",
      this.description = "",
      this.selected = false,
      this.wakesAtNight = false,
      this.count = 0,
      this.wakesGroup = MafiaWakesGroup.Main})
      : super._();

  factory _$MafiaRole.fromJson(Map<String, dynamic> json) =>
      _$_$MafiaRoleFromJson(json);

  @override
  final String name;
  @override
  final RoleEnum nameEnum;
  @override
  final List<Ability> abilities;
  @JsonKey(defaultValue: "")
  @override
  final String appDescription;
  @JsonKey(defaultValue: "")
  @override
  final String description;
  @JsonKey(defaultValue: false)
  @override
  final bool selected;
  @JsonKey(defaultValue: false)
  @override
  final bool wakesAtNight;
  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: MafiaWakesGroup.Main)
  @override
  final MafiaWakesGroup wakesGroup;

  @override
  String toString() {
    return 'Role.mafia(name: $name, nameEnum: $nameEnum, abilities: $abilities, appDescription: $appDescription, description: $description, selected: $selected, wakesAtNight: $wakesAtNight, count: $count, wakesGroup: $wakesGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MafiaRole &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nameEnum, nameEnum) ||
                const DeepCollectionEquality()
                    .equals(other.nameEnum, nameEnum)) &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.appDescription, appDescription) ||
                const DeepCollectionEquality()
                    .equals(other.appDescription, appDescription)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.wakesAtNight, wakesAtNight) ||
                const DeepCollectionEquality()
                    .equals(other.wakesAtNight, wakesAtNight)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.wakesGroup, wakesGroup) ||
                const DeepCollectionEquality()
                    .equals(other.wakesGroup, wakesGroup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nameEnum) ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(appDescription) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(wakesAtNight) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(wakesGroup);

  @JsonKey(ignore: true)
  @override
  $MafiaRoleCopyWith<MafiaRole> get copyWith =>
      _$MafiaRoleCopyWithImpl<MafiaRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count)
        city,
    required TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count,
            MafiaWakesGroup wakesGroup)
        mafia,
  }) {
    return mafia(name, nameEnum, abilities, appDescription, description,
        selected, wakesAtNight, count, wakesGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count)?
        city,
    TResult Function(
            String name,
            RoleEnum nameEnum,
            List<Ability> abilities,
            String appDescription,
            String description,
            bool selected,
            bool wakesAtNight,
            int count,
            MafiaWakesGroup wakesGroup)?
        mafia,
    required TResult orElse(),
  }) {
    if (mafia != null) {
      return mafia(name, nameEnum, abilities, appDescription, description,
          selected, wakesAtNight, count, wakesGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityRole value) city,
    required TResult Function(MafiaRole value) mafia,
  }) {
    return mafia(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityRole value)? city,
    TResult Function(MafiaRole value)? mafia,
    required TResult orElse(),
  }) {
    if (mafia != null) {
      return mafia(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MafiaRoleToJson(this)..['runtimeType'] = 'mafia';
  }
}

abstract class MafiaRole extends Role {
  const factory MafiaRole(
      {required String name,
      required RoleEnum nameEnum,
      required List<Ability> abilities,
      String appDescription,
      String description,
      bool selected,
      bool wakesAtNight,
      int count,
      MafiaWakesGroup wakesGroup}) = _$MafiaRole;
  const MafiaRole._() : super._();

  factory MafiaRole.fromJson(Map<String, dynamic> json) = _$MafiaRole.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  RoleEnum get nameEnum => throw _privateConstructorUsedError;
  @override
  List<Ability> get abilities => throw _privateConstructorUsedError;
  @override
  String get appDescription => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get selected => throw _privateConstructorUsedError;
  @override
  bool get wakesAtNight => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  MafiaWakesGroup get wakesGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MafiaRoleCopyWith<MafiaRole> get copyWith =>
      throw _privateConstructorUsedError;
}
