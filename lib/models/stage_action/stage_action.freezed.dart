// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stage_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StageAction _$StageActionFromJson(Map<String, dynamic> json) {
  return _StageAction.fromJson(json);
}

/// @nodoc
mixin _$StageAction {
  String get from => throw _privateConstructorUsedError;
  int get fromIndex => throw _privateConstructorUsedError;
  int get abilityIndex => throw _privateConstructorUsedError;
  AbilityType get ability => throw _privateConstructorUsedError;
  Map<String, dynamic> get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StageActionCopyWith<StageAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageActionCopyWith<$Res> {
  factory $StageActionCopyWith(
          StageAction value, $Res Function(StageAction) then) =
      _$StageActionCopyWithImpl<$Res>;
  $Res call(
      {String from,
      int fromIndex,
      int abilityIndex,
      AbilityType ability,
      Map<String, dynamic> details});
}

/// @nodoc
class _$StageActionCopyWithImpl<$Res> implements $StageActionCopyWith<$Res> {
  _$StageActionCopyWithImpl(this._value, this._then);

  final StageAction _value;
  // ignore: unused_field
  final $Res Function(StageAction) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? fromIndex = freezed,
    Object? abilityIndex = freezed,
    Object? ability = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      fromIndex: fromIndex == freezed
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      abilityIndex: abilityIndex == freezed
          ? _value.abilityIndex
          : abilityIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_StageActionCopyWith<$Res>
    implements $StageActionCopyWith<$Res> {
  factory _$$_StageActionCopyWith(
          _$_StageAction value, $Res Function(_$_StageAction) then) =
      __$$_StageActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String from,
      int fromIndex,
      int abilityIndex,
      AbilityType ability,
      Map<String, dynamic> details});
}

/// @nodoc
class __$$_StageActionCopyWithImpl<$Res> extends _$StageActionCopyWithImpl<$Res>
    implements _$$_StageActionCopyWith<$Res> {
  __$$_StageActionCopyWithImpl(
      _$_StageAction _value, $Res Function(_$_StageAction) _then)
      : super(_value, (v) => _then(v as _$_StageAction));

  @override
  _$_StageAction get _value => super._value as _$_StageAction;

  @override
  $Res call({
    Object? from = freezed,
    Object? fromIndex = freezed,
    Object? abilityIndex = freezed,
    Object? ability = freezed,
    Object? details = freezed,
  }) {
    return _then(_$_StageAction(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      fromIndex: fromIndex == freezed
          ? _value.fromIndex
          : fromIndex // ignore: cast_nullable_to_non_nullable
              as int,
      abilityIndex: abilityIndex == freezed
          ? _value.abilityIndex
          : abilityIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ability: ability == freezed
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      details: details == freezed
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StageAction extends _StageAction {
  const _$_StageAction(
      {required this.from,
      required this.fromIndex,
      required this.abilityIndex,
      required this.ability,
      final Map<String, dynamic> details = const {}})
      : _details = details,
        super._();

  factory _$_StageAction.fromJson(Map<String, dynamic> json) =>
      _$$_StageActionFromJson(json);

  @override
  final String from;
  @override
  final int fromIndex;
  @override
  final int abilityIndex;
  @override
  final AbilityType ability;
  final Map<String, dynamic> _details;
  @override
  @JsonKey()
  Map<String, dynamic> get details {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_details);
  }

  @override
  String toString() {
    return 'StageAction(from: $from, fromIndex: $fromIndex, abilityIndex: $abilityIndex, ability: $ability, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StageAction &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.fromIndex, fromIndex) &&
            const DeepCollectionEquality()
                .equals(other.abilityIndex, abilityIndex) &&
            const DeepCollectionEquality().equals(other.ability, ability) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(fromIndex),
      const DeepCollectionEquality().hash(abilityIndex),
      const DeepCollectionEquality().hash(ability),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  _$$_StageActionCopyWith<_$_StageAction> get copyWith =>
      __$$_StageActionCopyWithImpl<_$_StageAction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StageActionToJson(this);
  }
}

abstract class _StageAction extends StageAction {
  const factory _StageAction(
      {required final String from,
      required final int fromIndex,
      required final int abilityIndex,
      required final AbilityType ability,
      final Map<String, dynamic> details}) = _$_StageAction;
  const _StageAction._() : super._();

  factory _StageAction.fromJson(Map<String, dynamic> json) =
      _$_StageAction.fromJson;

  @override
  String get from => throw _privateConstructorUsedError;
  @override
  int get fromIndex => throw _privateConstructorUsedError;
  @override
  int get abilityIndex => throw _privateConstructorUsedError;
  @override
  AbilityType get ability => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StageActionCopyWith<_$_StageAction> get copyWith =>
      throw _privateConstructorUsedError;
}
