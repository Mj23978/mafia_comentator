// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
class _$PlayerTearOff {
  const _$PlayerTearOff();

  _Player call(
      {required String name,
      required List<StageAction> takingAction,
      bool selected = false,
      bool roleShowed = false,
      bool alive = true,
      Map<String, int> votes = const <String, int>{},
      String? roleName,
      Role? role}) {
    return _Player(
      name: name,
      takingAction: takingAction,
      selected: selected,
      roleShowed: roleShowed,
      alive: alive,
      votes: votes,
      roleName: roleName,
      role: role,
    );
  }

  Player fromJson(Map<String, Object> json) {
    return Player.fromJson(json);
  }
}

/// @nodoc
const $Player = _$PlayerTearOff();

/// @nodoc
mixin _$Player {
  String get name => throw _privateConstructorUsedError;
  List<StageAction> get takingAction => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  bool get roleShowed => throw _privateConstructorUsedError;
  bool get alive => throw _privateConstructorUsedError;
  Map<String, int> get votes => throw _privateConstructorUsedError;
  String? get roleName => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<StageAction> takingAction,
      bool selected,
      bool roleShowed,
      bool alive,
      Map<String, int> votes,
      String? roleName,
      Role? role});

  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res> implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  final Player _value;
  // ignore: unused_field
  final $Res Function(Player) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? takingAction = freezed,
    Object? selected = freezed,
    Object? roleShowed = freezed,
    Object? alive = freezed,
    Object? votes = freezed,
    Object? roleName = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      takingAction: takingAction == freezed
          ? _value.takingAction
          : takingAction // ignore: cast_nullable_to_non_nullable
              as List<StageAction>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      roleShowed: roleShowed == freezed
          ? _value.roleShowed
          : roleShowed // ignore: cast_nullable_to_non_nullable
              as bool,
      alive: alive == freezed
          ? _value.alive
          : alive // ignore: cast_nullable_to_non_nullable
              as bool,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      roleName: roleName == freezed
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }

  @override
  $RoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc
abstract class _$PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$PlayerCopyWith(_Player value, $Res Function(_Player) then) =
      __$PlayerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<StageAction> takingAction,
      bool selected,
      bool roleShowed,
      bool alive,
      Map<String, int> votes,
      String? roleName,
      Role? role});

  @override
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$PlayerCopyWithImpl<$Res> extends _$PlayerCopyWithImpl<$Res>
    implements _$PlayerCopyWith<$Res> {
  __$PlayerCopyWithImpl(_Player _value, $Res Function(_Player) _then)
      : super(_value, (v) => _then(v as _Player));

  @override
  _Player get _value => super._value as _Player;

  @override
  $Res call({
    Object? name = freezed,
    Object? takingAction = freezed,
    Object? selected = freezed,
    Object? roleShowed = freezed,
    Object? alive = freezed,
    Object? votes = freezed,
    Object? roleName = freezed,
    Object? role = freezed,
  }) {
    return _then(_Player(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      takingAction: takingAction == freezed
          ? _value.takingAction
          : takingAction // ignore: cast_nullable_to_non_nullable
              as List<StageAction>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      roleShowed: roleShowed == freezed
          ? _value.roleShowed
          : roleShowed // ignore: cast_nullable_to_non_nullable
              as bool,
      alive: alive == freezed
          ? _value.alive
          : alive // ignore: cast_nullable_to_non_nullable
              as bool,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      roleName: roleName == freezed
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Player extends _Player {
  const _$_Player(
      {required this.name,
      required this.takingAction,
      this.selected = false,
      this.roleShowed = false,
      this.alive = true,
      this.votes = const <String, int>{},
      this.roleName,
      this.role})
      : super._();

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerFromJson(json);

  @override
  final String name;
  @override
  final List<StageAction> takingAction;
  @JsonKey(defaultValue: false)
  @override
  final bool selected;
  @JsonKey(defaultValue: false)
  @override
  final bool roleShowed;
  @JsonKey(defaultValue: true)
  @override
  final bool alive;
  @JsonKey(defaultValue: const <String, int>{})
  @override
  final Map<String, int> votes;
  @override
  final String? roleName;
  @override
  final Role? role;

  @override
  String toString() {
    return 'Player(name: $name, takingAction: $takingAction, selected: $selected, roleShowed: $roleShowed, alive: $alive, votes: $votes, roleName: $roleName, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Player &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.takingAction, takingAction) ||
                const DeepCollectionEquality()
                    .equals(other.takingAction, takingAction)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.roleShowed, roleShowed) ||
                const DeepCollectionEquality()
                    .equals(other.roleShowed, roleShowed)) &&
            (identical(other.alive, alive) ||
                const DeepCollectionEquality().equals(other.alive, alive)) &&
            (identical(other.votes, votes) ||
                const DeepCollectionEquality().equals(other.votes, votes)) &&
            (identical(other.roleName, roleName) ||
                const DeepCollectionEquality()
                    .equals(other.roleName, roleName)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(takingAction) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(roleShowed) ^
      const DeepCollectionEquality().hash(alive) ^
      const DeepCollectionEquality().hash(votes) ^
      const DeepCollectionEquality().hash(roleName) ^
      const DeepCollectionEquality().hash(role);

  @JsonKey(ignore: true)
  @override
  _$PlayerCopyWith<_Player> get copyWith =>
      __$PlayerCopyWithImpl<_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerToJson(this);
  }
}

abstract class _Player extends Player {
  const factory _Player(
      {required String name,
      required List<StageAction> takingAction,
      bool selected,
      bool roleShowed,
      bool alive,
      Map<String, int> votes,
      String? roleName,
      Role? role}) = _$_Player;
  const _Player._() : super._();

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<StageAction> get takingAction => throw _privateConstructorUsedError;
  @override
  bool get selected => throw _privateConstructorUsedError;
  @override
  bool get roleShowed => throw _privateConstructorUsedError;
  @override
  bool get alive => throw _privateConstructorUsedError;
  @override
  Map<String, int> get votes => throw _privateConstructorUsedError;
  @override
  String? get roleName => throw _privateConstructorUsedError;
  @override
  Role? get role => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerCopyWith<_Player> get copyWith => throw _privateConstructorUsedError;
}
