// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Role _$RoleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'city':
      return CityRole.fromJson(json);
    case 'mafia':
      return MafiaRole.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Role',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

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
  TResult? whenOrNull<TResult extends Object?>({
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityRole value)? city,
    TResult Function(MafiaRole value)? mafia,
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
abstract class _$$CityRoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$CityRoleCopyWith(
          _$CityRole value, $Res Function(_$CityRole) then) =
      __$$CityRoleCopyWithImpl<$Res>;
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
class __$$CityRoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements _$$CityRoleCopyWith<$Res> {
  __$$CityRoleCopyWithImpl(_$CityRole _value, $Res Function(_$CityRole) _then)
      : super(_value, (v) => _then(v as _$CityRole));

  @override
  _$CityRole get _value => super._value as _$CityRole;

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
    return _then(_$CityRole(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnum: nameEnum == freezed
          ? _value.nameEnum
          : nameEnum // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      abilities: abilities == freezed
          ? _value._abilities
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
@JsonSerializable()
class _$CityRole extends CityRole {
  const _$CityRole(
      {required this.name,
      required this.nameEnum,
      required final List<Ability> abilities,
      this.appDescription = "",
      this.description = "",
      this.selected = false,
      this.wakesAtNight = false,
      this.count = 0,
      final String? $type})
      : _abilities = abilities,
        $type = $type ?? 'city',
        super._();

  factory _$CityRole.fromJson(Map<String, dynamic> json) =>
      _$$CityRoleFromJson(json);

  @override
  final String name;
  @override
  final RoleEnum nameEnum;
  final List<Ability> _abilities;
  @override
  List<Ability> get abilities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  @JsonKey()
  final String appDescription;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool selected;
  @override
  @JsonKey()
  final bool wakesAtNight;
  @override
  @JsonKey()
  final int count;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Role.city(name: $name, nameEnum: $nameEnum, abilities: $abilities, appDescription: $appDescription, description: $description, selected: $selected, wakesAtNight: $wakesAtNight, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityRole &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameEnum, nameEnum) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality()
                .equals(other.appDescription, appDescription) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality()
                .equals(other.wakesAtNight, wakesAtNight) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameEnum),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(appDescription),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(wakesAtNight),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$CityRoleCopyWith<_$CityRole> get copyWith =>
      __$$CityRoleCopyWithImpl<_$CityRole>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return city?.call(name, nameEnum, abilities, appDescription, description,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityRole value)? city,
    TResult Function(MafiaRole value)? mafia,
  }) {
    return city?.call(this);
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
    return _$$CityRoleToJson(this);
  }
}

abstract class CityRole extends Role {
  const factory CityRole(
      {required final String name,
      required final RoleEnum nameEnum,
      required final List<Ability> abilities,
      final String appDescription,
      final String description,
      final bool selected,
      final bool wakesAtNight,
      final int count}) = _$CityRole;
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
  _$$CityRoleCopyWith<_$CityRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MafiaRoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$MafiaRoleCopyWith(
          _$MafiaRole value, $Res Function(_$MafiaRole) then) =
      __$$MafiaRoleCopyWithImpl<$Res>;
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
class __$$MafiaRoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res>
    implements _$$MafiaRoleCopyWith<$Res> {
  __$$MafiaRoleCopyWithImpl(
      _$MafiaRole _value, $Res Function(_$MafiaRole) _then)
      : super(_value, (v) => _then(v as _$MafiaRole));

  @override
  _$MafiaRole get _value => super._value as _$MafiaRole;

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
    return _then(_$MafiaRole(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameEnum: nameEnum == freezed
          ? _value.nameEnum
          : nameEnum // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      abilities: abilities == freezed
          ? _value._abilities
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

/// @nodoc
@JsonSerializable()
class _$MafiaRole extends MafiaRole {
  const _$MafiaRole(
      {required this.name,
      required this.nameEnum,
      required final List<Ability> abilities,
      this.appDescription = "",
      this.description = "",
      this.selected = false,
      this.wakesAtNight = false,
      this.count = 0,
      this.wakesGroup = MafiaWakesGroup.Main,
      final String? $type})
      : _abilities = abilities,
        $type = $type ?? 'mafia',
        super._();

  factory _$MafiaRole.fromJson(Map<String, dynamic> json) =>
      _$$MafiaRoleFromJson(json);

  @override
  final String name;
  @override
  final RoleEnum nameEnum;
  final List<Ability> _abilities;
  @override
  List<Ability> get abilities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  @JsonKey()
  final String appDescription;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool selected;
  @override
  @JsonKey()
  final bool wakesAtNight;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final MafiaWakesGroup wakesGroup;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Role.mafia(name: $name, nameEnum: $nameEnum, abilities: $abilities, appDescription: $appDescription, description: $description, selected: $selected, wakesAtNight: $wakesAtNight, count: $count, wakesGroup: $wakesGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MafiaRole &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameEnum, nameEnum) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality()
                .equals(other.appDescription, appDescription) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality()
                .equals(other.wakesAtNight, wakesAtNight) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.wakesGroup, wakesGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameEnum),
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(appDescription),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(wakesAtNight),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(wakesGroup));

  @JsonKey(ignore: true)
  @override
  _$$MafiaRoleCopyWith<_$MafiaRole> get copyWith =>
      __$$MafiaRoleCopyWithImpl<_$MafiaRole>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return mafia?.call(name, nameEnum, abilities, appDescription, description,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CityRole value)? city,
    TResult Function(MafiaRole value)? mafia,
  }) {
    return mafia?.call(this);
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
    return _$$MafiaRoleToJson(this);
  }
}

abstract class MafiaRole extends Role {
  const factory MafiaRole(
      {required final String name,
      required final RoleEnum nameEnum,
      required final List<Ability> abilities,
      final String appDescription,
      final String description,
      final bool selected,
      final bool wakesAtNight,
      final int count,
      final MafiaWakesGroup wakesGroup}) = _$MafiaRole;
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
  _$$MafiaRoleCopyWith<_$MafiaRole> get copyWith =>
      throw _privateConstructorUsedError;
}
