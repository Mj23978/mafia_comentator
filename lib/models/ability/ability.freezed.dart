// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Ability.fromJson(json);
    case 'save':
      return Save.fromJson(json);
    case 'counter':
      return Counter.fromJson(json);
    case 'recrute':
      return Recrute.fromJson(json);
    case 'guess':
      return Guess.fromJson(json);
    case 'change':
      return Change.fromJson(json);
    case 'kill':
      return Kill.fromJson(json);
    case 'disable':
      return Disable.fromJson(json);
    case 'activation':
      return Activation.fromJson(json);
    case 'give':
      return Give.fromJson(json);
    case 'reserve':
      return Reserve.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Ability',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Ability {
  AbilityType get type => throw _privateConstructorUsedError;
  Stage get whenS => throw _privateConstructorUsedError;
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityCopyWith<Ability> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityCopyWith<$Res> {
  factory $AbilityCopyWith(Ability value, $Res Function(Ability) then) =
      _$AbilityCopyWithImpl<$Res>;
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets});
}

/// @nodoc
class _$AbilityCopyWithImpl<$Res> implements $AbilityCopyWith<$Res> {
  _$AbilityCopyWithImpl(this._value, this._then);

  final Ability _value;
  // ignore: unused_field
  final $Res Function(Ability) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value.validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
    ));
  }
}

/// @nodoc
abstract class _$$_AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$_AbilityCopyWith(
          _$_Ability value, $Res Function(_$_Ability) then) =
      __$$_AbilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets});
}

/// @nodoc
class __$$_AbilityCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$_AbilityCopyWith<$Res> {
  __$$_AbilityCopyWithImpl(_$_Ability _value, $Res Function(_$_Ability) _then)
      : super(_value, (v) => _then(v as _$_Ability));

  @override
  _$_Ability get _value => super._value as _$_Ability;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
  }) {
    return _then(_$_Ability(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ability extends _Ability {
  const _$_Ability(
      {required this.type,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      final List<RoleEnum> validTargets = const [],
      final String? $type})
      : _validTargets = validTargets,
        $type = $type ?? 'default',
        super._();

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityFromJson(json);

  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  @JsonKey()
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ability &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets));

  @JsonKey(ignore: true)
  @override
  _$$_AbilityCopyWith<_$_Ability> get copyWith =>
      __$$_AbilityCopyWithImpl<_$_Ability>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return $default(type, whenS, everyClause, timesClause, validTargets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return $default?.call(type, whenS, everyClause, timesClause, validTargets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(type, whenS, everyClause, timesClause, validTargets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityToJson(this);
  }
}

abstract class _Ability extends Ability {
  const factory _Ability(
      {required final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      final List<RoleEnum> validTargets}) = _$_Ability;
  const _Ability._() : super._();

  factory _Ability.fromJson(Map<String, dynamic> json) = _$_Ability.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AbilityCopyWith<_$_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$SaveCopyWith(_$Save value, $Res Function(_$Save) then) =
      __$$SaveCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      List<Action> saveFrom,
      SelfClause selfClause,
      List<RoleEnum> validTargets,
      WhenClause? whenClause,
      FromActionClause? fromClause,
      UntilClause? untilClause,
      EveryClause? everyClause,
      TimesClause? timesClause,
      IFClause? ifClause});
}

/// @nodoc
class __$$SaveCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$SaveCopyWith<$Res> {
  __$$SaveCopyWithImpl(_$Save _value, $Res Function(_$Save) _then)
      : super(_value, (v) => _then(v as _$Save));

  @override
  _$Save get _value => super._value as _$Save;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? saveFrom = freezed,
    Object? selfClause = freezed,
    Object? validTargets = freezed,
    Object? whenClause = freezed,
    Object? fromClause = freezed,
    Object? untilClause = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? ifClause = freezed,
  }) {
    return _then(_$Save(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      saveFrom: saveFrom == freezed
          ? _value._saveFrom
          : saveFrom // ignore: cast_nullable_to_non_nullable
              as List<Action>,
      selfClause: selfClause == freezed
          ? _value.selfClause
          : selfClause // ignore: cast_nullable_to_non_nullable
              as SelfClause,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      whenClause: whenClause == freezed
          ? _value.whenClause
          : whenClause // ignore: cast_nullable_to_non_nullable
              as WhenClause?,
      fromClause: fromClause == freezed
          ? _value.fromClause
          : fromClause // ignore: cast_nullable_to_non_nullable
              as FromActionClause?,
      untilClause: untilClause == freezed
          ? _value.untilClause
          : untilClause // ignore: cast_nullable_to_non_nullable
              as UntilClause?,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Save extends Save {
  const _$Save(
      {this.type = AbilityType.Save,
      required this.whenS,
      required final List<Action> saveFrom,
      required this.selfClause,
      required final List<RoleEnum> validTargets,
      this.whenClause,
      this.fromClause,
      this.untilClause,
      this.everyClause,
      this.timesClause,
      this.ifClause,
      final String? $type})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _saveFrom = saveFrom,
        _validTargets = validTargets,
        $type = $type ?? 'save',
        super._();

  factory _$Save.fromJson(Map<String, dynamic> json) => _$$SaveFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  final List<Action> _saveFrom;
  @override
  List<Action> get saveFrom {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saveFrom);
  }

  @override
  final SelfClause selfClause;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final WhenClause? whenClause;
  @override
  final FromActionClause? fromClause;
  @override
  final UntilClause? untilClause;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final IFClause? ifClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.save(type: $type, whenS: $whenS, saveFrom: $saveFrom, selfClause: $selfClause, validTargets: $validTargets, whenClause: $whenClause, fromClause: $fromClause, untilClause: $untilClause, everyClause: $everyClause, timesClause: $timesClause, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Save &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality().equals(other._saveFrom, _saveFrom) &&
            const DeepCollectionEquality()
                .equals(other.selfClause, selfClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality()
                .equals(other.whenClause, whenClause) &&
            const DeepCollectionEquality()
                .equals(other.fromClause, fromClause) &&
            const DeepCollectionEquality()
                .equals(other.untilClause, untilClause) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(_saveFrom),
      const DeepCollectionEquality().hash(selfClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(whenClause),
      const DeepCollectionEquality().hash(fromClause),
      const DeepCollectionEquality().hash(untilClause),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(ifClause));

  @JsonKey(ignore: true)
  @override
  _$$SaveCopyWith<_$Save> get copyWith =>
      __$$SaveCopyWithImpl<_$Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return save(type, whenS, saveFrom, selfClause, validTargets, whenClause,
        fromClause, untilClause, everyClause, timesClause, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return save?.call(
        type,
        whenS,
        saveFrom,
        selfClause,
        validTargets,
        whenClause,
        fromClause,
        untilClause,
        everyClause,
        timesClause,
        ifClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(type, whenS, saveFrom, selfClause, validTargets, whenClause,
          fromClause, untilClause, everyClause, timesClause, ifClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveToJson(this);
  }
}

abstract class Save extends Ability {
  const factory Save(
      {final AbilityType type,
      required final Stage whenS,
      required final List<Action> saveFrom,
      required final SelfClause selfClause,
      required final List<RoleEnum> validTargets,
      final WhenClause? whenClause,
      final FromActionClause? fromClause,
      final UntilClause? untilClause,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      final IFClause? ifClause}) = _$Save;
  const Save._() : super._();

  factory Save.fromJson(Map<String, dynamic> json) = _$Save.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  List<Action> get saveFrom => throw _privateConstructorUsedError;
  SelfClause get selfClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  WhenClause? get whenClause => throw _privateConstructorUsedError;
  FromActionClause? get fromClause => throw _privateConstructorUsedError;
  UntilClause? get untilClause => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SaveCopyWith<_$Save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CounterCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$CounterCopyWith(_$Counter value, $Res Function(_$Counter) then) =
      __$$CounterCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      AbilityType by,
      Who onWho,
      Cost? cost});
}

/// @nodoc
class __$$CounterCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$CounterCopyWith<$Res> {
  __$$CounterCopyWithImpl(_$Counter _value, $Res Function(_$Counter) _then)
      : super(_value, (v) => _then(v as _$Counter));

  @override
  _$Counter get _value => super._value as _$Counter;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? by = freezed,
    Object? onWho = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$Counter(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      by: by == freezed
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      onWho: onWho == freezed
          ? _value.onWho
          : onWho // ignore: cast_nullable_to_non_nullable
              as Who,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Counter extends Counter {
  const _$Counter(
      {this.type = AbilityType.Counter,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required final List<RoleEnum> validTargets,
      required this.by,
      required this.onWho,
      this.cost,
      final String? $type})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'counter',
        super._();

  factory _$Counter.fromJson(Map<String, dynamic> json) =>
      _$$CounterFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final AbilityType by;
  @override
  final Who onWho;
  @override
  final Cost? cost;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.counter(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, by: $by, onWho: $onWho, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Counter &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality().equals(other.by, by) &&
            const DeepCollectionEquality().equals(other.onWho, onWho) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(by),
      const DeepCollectionEquality().hash(onWho),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$$CounterCopyWith<_$Counter> get copyWith =>
      __$$CounterCopyWithImpl<_$Counter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return counter(
        type, whenS, everyClause, timesClause, validTargets, by, onWho, cost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return counter?.call(
        type, whenS, everyClause, timesClause, validTargets, by, onWho, cost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (counter != null) {
      return counter(
          type, whenS, everyClause, timesClause, validTargets, by, onWho, cost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return counter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return counter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (counter != null) {
      return counter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterToJson(this);
  }
}

abstract class Counter extends Ability {
  const factory Counter(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final List<RoleEnum> validTargets,
      required final AbilityType by,
      required final Who onWho,
      final Cost? cost}) = _$Counter;
  const Counter._() : super._();

  factory Counter.fromJson(Map<String, dynamic> json) = _$Counter.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  AbilityType get by => throw _privateConstructorUsedError;
  Who get onWho => throw _privateConstructorUsedError;
  Cost? get cost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CounterCopyWith<_$Counter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecruteCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$RecruteCopyWith(_$Recrute value, $Res Function(_$Recrute) then) =
      __$$RecruteCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      bool willBeConverted,
      CostOn costOnHimOrAll,
      Cost? costTypeIfNotValid});
}

/// @nodoc
class __$$RecruteCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$RecruteCopyWith<$Res> {
  __$$RecruteCopyWithImpl(_$Recrute _value, $Res Function(_$Recrute) _then)
      : super(_value, (v) => _then(v as _$Recrute));

  @override
  _$Recrute get _value => super._value as _$Recrute;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? willBeConverted = freezed,
    Object? costOnHimOrAll = freezed,
    Object? costTypeIfNotValid = freezed,
  }) {
    return _then(_$Recrute(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      willBeConverted: willBeConverted == freezed
          ? _value.willBeConverted
          : willBeConverted // ignore: cast_nullable_to_non_nullable
              as bool,
      costOnHimOrAll: costOnHimOrAll == freezed
          ? _value.costOnHimOrAll
          : costOnHimOrAll // ignore: cast_nullable_to_non_nullable
              as CostOn,
      costTypeIfNotValid: costTypeIfNotValid == freezed
          ? _value.costTypeIfNotValid
          : costTypeIfNotValid // ignore: cast_nullable_to_non_nullable
              as Cost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Recrute extends Recrute {
  const _$Recrute(
      {this.type = AbilityType.Recrute,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required final List<RoleEnum> validTargets,
      required this.willBeConverted,
      this.costOnHimOrAll = CostOn.None,
      this.costTypeIfNotValid,
      final String? $type})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'recrute',
        super._();

  factory _$Recrute.fromJson(Map<String, dynamic> json) =>
      _$$RecruteFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final bool willBeConverted;
  @override
  @JsonKey()
  final CostOn costOnHimOrAll;
  @override
  final Cost? costTypeIfNotValid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.recrute(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, willBeConverted: $willBeConverted, costOnHimOrAll: $costOnHimOrAll, costTypeIfNotValid: $costTypeIfNotValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Recrute &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality()
                .equals(other.willBeConverted, willBeConverted) &&
            const DeepCollectionEquality()
                .equals(other.costOnHimOrAll, costOnHimOrAll) &&
            const DeepCollectionEquality()
                .equals(other.costTypeIfNotValid, costTypeIfNotValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(willBeConverted),
      const DeepCollectionEquality().hash(costOnHimOrAll),
      const DeepCollectionEquality().hash(costTypeIfNotValid));

  @JsonKey(ignore: true)
  @override
  _$$RecruteCopyWith<_$Recrute> get copyWith =>
      __$$RecruteCopyWithImpl<_$Recrute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return recrute(type, whenS, everyClause, timesClause, validTargets,
        willBeConverted, costOnHimOrAll, costTypeIfNotValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return recrute?.call(type, whenS, everyClause, timesClause, validTargets,
        willBeConverted, costOnHimOrAll, costTypeIfNotValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (recrute != null) {
      return recrute(type, whenS, everyClause, timesClause, validTargets,
          willBeConverted, costOnHimOrAll, costTypeIfNotValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return recrute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return recrute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (recrute != null) {
      return recrute(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RecruteToJson(this);
  }
}

abstract class Recrute extends Ability {
  const factory Recrute(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final List<RoleEnum> validTargets,
      required final bool willBeConverted,
      final CostOn costOnHimOrAll,
      final Cost? costTypeIfNotValid}) = _$Recrute;
  const Recrute._() : super._();

  factory Recrute.fromJson(Map<String, dynamic> json) = _$Recrute.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  bool get willBeConverted => throw _privateConstructorUsedError;
  CostOn get costOnHimOrAll => throw _privateConstructorUsedError;
  Cost? get costTypeIfNotValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$RecruteCopyWith<_$Recrute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuessCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$GuessCopyWith(_$Guess value, $Res Function(_$Guess) then) =
      __$$GuessCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      GuessType what,
      Cost? costIfRight,
      Cost? costIfWrong,
      CostOn? costOnIfRight,
      CostOn? costOnIfWrong,
      WhenClause? whenClause,
      FromActionClause? fromClause,
      IFClause? ifClause,
      UntilClause? untilClause});
}

/// @nodoc
class __$$GuessCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$GuessCopyWith<$Res> {
  __$$GuessCopyWithImpl(_$Guess _value, $Res Function(_$Guess) _then)
      : super(_value, (v) => _then(v as _$Guess));

  @override
  _$Guess get _value => super._value as _$Guess;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? what = freezed,
    Object? costIfRight = freezed,
    Object? costIfWrong = freezed,
    Object? costOnIfRight = freezed,
    Object? costOnIfWrong = freezed,
    Object? whenClause = freezed,
    Object? fromClause = freezed,
    Object? ifClause = freezed,
    Object? untilClause = freezed,
  }) {
    return _then(_$Guess(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      what: what == freezed
          ? _value.what
          : what // ignore: cast_nullable_to_non_nullable
              as GuessType,
      costIfRight: costIfRight == freezed
          ? _value.costIfRight
          : costIfRight // ignore: cast_nullable_to_non_nullable
              as Cost?,
      costIfWrong: costIfWrong == freezed
          ? _value.costIfWrong
          : costIfWrong // ignore: cast_nullable_to_non_nullable
              as Cost?,
      costOnIfRight: costOnIfRight == freezed
          ? _value.costOnIfRight
          : costOnIfRight // ignore: cast_nullable_to_non_nullable
              as CostOn?,
      costOnIfWrong: costOnIfWrong == freezed
          ? _value.costOnIfWrong
          : costOnIfWrong // ignore: cast_nullable_to_non_nullable
              as CostOn?,
      whenClause: whenClause == freezed
          ? _value.whenClause
          : whenClause // ignore: cast_nullable_to_non_nullable
              as WhenClause?,
      fromClause: fromClause == freezed
          ? _value.fromClause
          : fromClause // ignore: cast_nullable_to_non_nullable
              as FromActionClause?,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
      untilClause: untilClause == freezed
          ? _value.untilClause
          : untilClause // ignore: cast_nullable_to_non_nullable
              as UntilClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Guess extends Guess {
  const _$Guess(
      {this.type = AbilityType.Guess,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required final List<RoleEnum> validTargets,
      required this.what,
      this.costIfRight,
      this.costIfWrong,
      this.costOnIfRight,
      this.costOnIfWrong,
      this.whenClause,
      this.fromClause,
      this.ifClause,
      this.untilClause,
      final String? $type})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null ||
            ifClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'guess',
        super._();

  factory _$Guess.fromJson(Map<String, dynamic> json) => _$$GuessFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final GuessType what;
  @override
  final Cost? costIfRight;
  @override
  final Cost? costIfWrong;
  @override
  final CostOn? costOnIfRight;
  @override
  final CostOn? costOnIfWrong;
  @override
  final WhenClause? whenClause;
  @override
  final FromActionClause? fromClause;
  @override
  final IFClause? ifClause;
  @override
  final UntilClause? untilClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.guess(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, what: $what, costIfRight: $costIfRight, costIfWrong: $costIfWrong, costOnIfRight: $costOnIfRight, costOnIfWrong: $costOnIfWrong, whenClause: $whenClause, fromClause: $fromClause, ifClause: $ifClause, untilClause: $untilClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Guess &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality().equals(other.what, what) &&
            const DeepCollectionEquality()
                .equals(other.costIfRight, costIfRight) &&
            const DeepCollectionEquality()
                .equals(other.costIfWrong, costIfWrong) &&
            const DeepCollectionEquality()
                .equals(other.costOnIfRight, costOnIfRight) &&
            const DeepCollectionEquality()
                .equals(other.costOnIfWrong, costOnIfWrong) &&
            const DeepCollectionEquality()
                .equals(other.whenClause, whenClause) &&
            const DeepCollectionEquality()
                .equals(other.fromClause, fromClause) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause) &&
            const DeepCollectionEquality()
                .equals(other.untilClause, untilClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(what),
      const DeepCollectionEquality().hash(costIfRight),
      const DeepCollectionEquality().hash(costIfWrong),
      const DeepCollectionEquality().hash(costOnIfRight),
      const DeepCollectionEquality().hash(costOnIfWrong),
      const DeepCollectionEquality().hash(whenClause),
      const DeepCollectionEquality().hash(fromClause),
      const DeepCollectionEquality().hash(ifClause),
      const DeepCollectionEquality().hash(untilClause));

  @JsonKey(ignore: true)
  @override
  _$$GuessCopyWith<_$Guess> get copyWith =>
      __$$GuessCopyWithImpl<_$Guess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return guess(
        type,
        whenS,
        everyClause,
        timesClause,
        validTargets,
        what,
        costIfRight,
        costIfWrong,
        costOnIfRight,
        costOnIfWrong,
        whenClause,
        fromClause,
        ifClause,
        untilClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return guess?.call(
        type,
        whenS,
        everyClause,
        timesClause,
        validTargets,
        what,
        costIfRight,
        costIfWrong,
        costOnIfRight,
        costOnIfWrong,
        whenClause,
        fromClause,
        ifClause,
        untilClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (guess != null) {
      return guess(
          type,
          whenS,
          everyClause,
          timesClause,
          validTargets,
          what,
          costIfRight,
          costIfWrong,
          costOnIfRight,
          costOnIfWrong,
          whenClause,
          fromClause,
          ifClause,
          untilClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return guess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return guess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (guess != null) {
      return guess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GuessToJson(this);
  }
}

abstract class Guess extends Ability {
  const factory Guess(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final List<RoleEnum> validTargets,
      required final GuessType what,
      final Cost? costIfRight,
      final Cost? costIfWrong,
      final CostOn? costOnIfRight,
      final CostOn? costOnIfWrong,
      final WhenClause? whenClause,
      final FromActionClause? fromClause,
      final IFClause? ifClause,
      final UntilClause? untilClause}) = _$Guess;
  const Guess._() : super._();

  factory Guess.fromJson(Map<String, dynamic> json) = _$Guess.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  GuessType get what => throw _privateConstructorUsedError;
  Cost? get costIfRight => throw _privateConstructorUsedError;
  Cost? get costIfWrong => throw _privateConstructorUsedError;
  CostOn? get costOnIfRight => throw _privateConstructorUsedError;
  CostOn? get costOnIfWrong => throw _privateConstructorUsedError;
  WhenClause? get whenClause => throw _privateConstructorUsedError;
  FromActionClause? get fromClause => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  UntilClause? get untilClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GuessCopyWith<_$Guess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$ChangeCopyWith(_$Change value, $Res Function(_$Change) then) =
      __$$ChangeCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      AbilityType what,
      ChangeType change,
      List<RoleEnum> validTargets,
      WhenClause? whenClause,
      FromClause? fromClause,
      IFClause? ifClause,
      UntilClause? untilClause});
}

/// @nodoc
class __$$ChangeCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$ChangeCopyWith<$Res> {
  __$$ChangeCopyWithImpl(_$Change _value, $Res Function(_$Change) _then)
      : super(_value, (v) => _then(v as _$Change));

  @override
  _$Change get _value => super._value as _$Change;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? what = freezed,
    Object? change = freezed,
    Object? validTargets = freezed,
    Object? whenClause = freezed,
    Object? fromClause = freezed,
    Object? ifClause = freezed,
    Object? untilClause = freezed,
  }) {
    return _then(_$Change(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      what: what == freezed
          ? _value.what
          : what // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      whenClause: whenClause == freezed
          ? _value.whenClause
          : whenClause // ignore: cast_nullable_to_non_nullable
              as WhenClause?,
      fromClause: fromClause == freezed
          ? _value.fromClause
          : fromClause // ignore: cast_nullable_to_non_nullable
              as FromClause?,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
      untilClause: untilClause == freezed
          ? _value.untilClause
          : untilClause // ignore: cast_nullable_to_non_nullable
              as UntilClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Change extends Change {
  const _$Change(
      {this.type = AbilityType.Change,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.what,
      required this.change,
      required final List<RoleEnum> validTargets,
      this.whenClause,
      this.fromClause,
      this.ifClause,
      this.untilClause,
      final String? $type})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null ||
            ifClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'change',
        super._();

  factory _$Change.fromJson(Map<String, dynamic> json) =>
      _$$ChangeFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final AbilityType what;
  @override
  final ChangeType change;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final WhenClause? whenClause;
  @override
  final FromClause? fromClause;
  @override
  final IFClause? ifClause;
  @override
  final UntilClause? untilClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.change(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, what: $what, change: $change, validTargets: $validTargets, whenClause: $whenClause, fromClause: $fromClause, ifClause: $ifClause, untilClause: $untilClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Change &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality().equals(other.what, what) &&
            const DeepCollectionEquality().equals(other.change, change) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality()
                .equals(other.whenClause, whenClause) &&
            const DeepCollectionEquality()
                .equals(other.fromClause, fromClause) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause) &&
            const DeepCollectionEquality()
                .equals(other.untilClause, untilClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(what),
      const DeepCollectionEquality().hash(change),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(whenClause),
      const DeepCollectionEquality().hash(fromClause),
      const DeepCollectionEquality().hash(ifClause),
      const DeepCollectionEquality().hash(untilClause));

  @JsonKey(ignore: true)
  @override
  _$$ChangeCopyWith<_$Change> get copyWith =>
      __$$ChangeCopyWithImpl<_$Change>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return change(type, whenS, everyClause, timesClause, what, this.change,
        validTargets, whenClause, fromClause, ifClause, untilClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return change?.call(
        type,
        whenS,
        everyClause,
        timesClause,
        what,
        this.change,
        validTargets,
        whenClause,
        fromClause,
        ifClause,
        untilClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(type, whenS, everyClause, timesClause, what, this.change,
          validTargets, whenClause, fromClause, ifClause, untilClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeToJson(this);
  }
}

abstract class Change extends Ability {
  const factory Change(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final AbilityType what,
      required final ChangeType change,
      required final List<RoleEnum> validTargets,
      final WhenClause? whenClause,
      final FromClause? fromClause,
      final IFClause? ifClause,
      final UntilClause? untilClause}) = _$Change;
  const Change._() : super._();

  factory Change.fromJson(Map<String, dynamic> json) = _$Change.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  AbilityType get what => throw _privateConstructorUsedError;
  ChangeType get change => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  WhenClause? get whenClause => throw _privateConstructorUsedError;
  FromClause? get fromClause => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  UntilClause? get untilClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ChangeCopyWith<_$Change> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KillCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$KillCopyWith(_$Kill value, $Res Function(_$Kill) then) =
      __$$KillCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      int effectesAfter,
      Stage effectesAfterStage,
      List<RoleEnum> cantSaveBy,
      Cost? costTypeForKill,
      Cost? costTypeIfWrong,
      WhenClause? whenClause,
      IFClause? ifClause,
      UntilClause? untilClause});
}

/// @nodoc
class __$$KillCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$KillCopyWith<$Res> {
  __$$KillCopyWithImpl(_$Kill _value, $Res Function(_$Kill) _then)
      : super(_value, (v) => _then(v as _$Kill));

  @override
  _$Kill get _value => super._value as _$Kill;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? effectesAfter = freezed,
    Object? effectesAfterStage = freezed,
    Object? cantSaveBy = freezed,
    Object? costTypeForKill = freezed,
    Object? costTypeIfWrong = freezed,
    Object? whenClause = freezed,
    Object? ifClause = freezed,
    Object? untilClause = freezed,
  }) {
    return _then(_$Kill(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      effectesAfter: effectesAfter == freezed
          ? _value.effectesAfter
          : effectesAfter // ignore: cast_nullable_to_non_nullable
              as int,
      effectesAfterStage: effectesAfterStage == freezed
          ? _value.effectesAfterStage
          : effectesAfterStage // ignore: cast_nullable_to_non_nullable
              as Stage,
      cantSaveBy: cantSaveBy == freezed
          ? _value._cantSaveBy
          : cantSaveBy // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      costTypeForKill: costTypeForKill == freezed
          ? _value.costTypeForKill
          : costTypeForKill // ignore: cast_nullable_to_non_nullable
              as Cost?,
      costTypeIfWrong: costTypeIfWrong == freezed
          ? _value.costTypeIfWrong
          : costTypeIfWrong // ignore: cast_nullable_to_non_nullable
              as Cost?,
      whenClause: whenClause == freezed
          ? _value.whenClause
          : whenClause // ignore: cast_nullable_to_non_nullable
              as WhenClause?,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
      untilClause: untilClause == freezed
          ? _value.untilClause
          : untilClause // ignore: cast_nullable_to_non_nullable
              as UntilClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Kill extends Kill {
  const _$Kill(
      {this.type = AbilityType.Kill,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required final List<RoleEnum> validTargets,
      required this.effectesAfter,
      required this.effectesAfterStage,
      final List<RoleEnum> cantSaveBy = const [],
      this.costTypeForKill,
      this.costTypeIfWrong,
      this.whenClause,
      this.ifClause,
      this.untilClause,
      final String? $type})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null ||
            ifClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        _cantSaveBy = cantSaveBy,
        $type = $type ?? 'kill',
        super._();

  factory _$Kill.fromJson(Map<String, dynamic> json) => _$$KillFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final int effectesAfter;
  @override
  final Stage effectesAfterStage;
  final List<RoleEnum> _cantSaveBy;
  @override
  @JsonKey()
  List<RoleEnum> get cantSaveBy {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cantSaveBy);
  }

  @override
  final Cost? costTypeForKill;
  @override
  final Cost? costTypeIfWrong;
  @override
  final WhenClause? whenClause;
  @override
  final IFClause? ifClause;
  @override
  final UntilClause? untilClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.kill(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, effectesAfter: $effectesAfter, effectesAfterStage: $effectesAfterStage, cantSaveBy: $cantSaveBy, costTypeForKill: $costTypeForKill, costTypeIfWrong: $costTypeIfWrong, whenClause: $whenClause, ifClause: $ifClause, untilClause: $untilClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Kill &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality()
                .equals(other.effectesAfter, effectesAfter) &&
            const DeepCollectionEquality()
                .equals(other.effectesAfterStage, effectesAfterStage) &&
            const DeepCollectionEquality()
                .equals(other._cantSaveBy, _cantSaveBy) &&
            const DeepCollectionEquality()
                .equals(other.costTypeForKill, costTypeForKill) &&
            const DeepCollectionEquality()
                .equals(other.costTypeIfWrong, costTypeIfWrong) &&
            const DeepCollectionEquality()
                .equals(other.whenClause, whenClause) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause) &&
            const DeepCollectionEquality()
                .equals(other.untilClause, untilClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(effectesAfter),
      const DeepCollectionEquality().hash(effectesAfterStage),
      const DeepCollectionEquality().hash(_cantSaveBy),
      const DeepCollectionEquality().hash(costTypeForKill),
      const DeepCollectionEquality().hash(costTypeIfWrong),
      const DeepCollectionEquality().hash(whenClause),
      const DeepCollectionEquality().hash(ifClause),
      const DeepCollectionEquality().hash(untilClause));

  @JsonKey(ignore: true)
  @override
  _$$KillCopyWith<_$Kill> get copyWith =>
      __$$KillCopyWithImpl<_$Kill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return kill(
        type,
        whenS,
        everyClause,
        timesClause,
        validTargets,
        effectesAfter,
        effectesAfterStage,
        cantSaveBy,
        costTypeForKill,
        costTypeIfWrong,
        whenClause,
        ifClause,
        untilClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return kill?.call(
        type,
        whenS,
        everyClause,
        timesClause,
        validTargets,
        effectesAfter,
        effectesAfterStage,
        cantSaveBy,
        costTypeForKill,
        costTypeIfWrong,
        whenClause,
        ifClause,
        untilClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill(
          type,
          whenS,
          everyClause,
          timesClause,
          validTargets,
          effectesAfter,
          effectesAfterStage,
          cantSaveBy,
          costTypeForKill,
          costTypeIfWrong,
          whenClause,
          ifClause,
          untilClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return kill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return kill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (kill != null) {
      return kill(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$KillToJson(this);
  }
}

abstract class Kill extends Ability {
  const factory Kill(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final List<RoleEnum> validTargets,
      required final int effectesAfter,
      required final Stage effectesAfterStage,
      final List<RoleEnum> cantSaveBy,
      final Cost? costTypeForKill,
      final Cost? costTypeIfWrong,
      final WhenClause? whenClause,
      final IFClause? ifClause,
      final UntilClause? untilClause}) = _$Kill;
  const Kill._() : super._();

  factory Kill.fromJson(Map<String, dynamic> json) = _$Kill.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  int get effectesAfter => throw _privateConstructorUsedError;
  Stage get effectesAfterStage => throw _privateConstructorUsedError;
  List<RoleEnum> get cantSaveBy => throw _privateConstructorUsedError;
  Cost? get costTypeForKill => throw _privateConstructorUsedError;
  Cost? get costTypeIfWrong => throw _privateConstructorUsedError;
  WhenClause? get whenClause => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  UntilClause? get untilClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$KillCopyWith<_$Kill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisableCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$DisableCopyWith(_$Disable value, $Res Function(_$Disable) then) =
      __$$DisableCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<Action> fromActions,
      List<RoleEnum> validTargets,
      IFClause? ifClause});
}

/// @nodoc
class __$$DisableCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$DisableCopyWith<$Res> {
  __$$DisableCopyWithImpl(_$Disable _value, $Res Function(_$Disable) _then)
      : super(_value, (v) => _then(v as _$Disable));

  @override
  _$Disable get _value => super._value as _$Disable;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? fromActions = freezed,
    Object? validTargets = freezed,
    Object? ifClause = freezed,
  }) {
    return _then(_$Disable(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      fromActions: fromActions == freezed
          ? _value._fromActions
          : fromActions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Disable extends Disable {
  const _$Disable(
      {this.type = AbilityType.Disable,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required final List<Action> fromActions,
      required final List<RoleEnum> validTargets,
      this.ifClause,
      final String? $type})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _fromActions = fromActions,
        _validTargets = validTargets,
        $type = $type ?? 'disable',
        super._();

  factory _$Disable.fromJson(Map<String, dynamic> json) =>
      _$$DisableFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<Action> _fromActions;
  @override
  List<Action> get fromActions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fromActions);
  }

  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final IFClause? ifClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.disable(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, fromActions: $fromActions, validTargets: $validTargets, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Disable &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._fromActions, _fromActions) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_fromActions),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(ifClause));

  @JsonKey(ignore: true)
  @override
  _$$DisableCopyWith<_$Disable> get copyWith =>
      __$$DisableCopyWithImpl<_$Disable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return disable(type, whenS, everyClause, timesClause, fromActions,
        validTargets, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return disable?.call(type, whenS, everyClause, timesClause, fromActions,
        validTargets, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(type, whenS, everyClause, timesClause, fromActions,
          validTargets, ifClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return disable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return disable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (disable != null) {
      return disable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DisableToJson(this);
  }
}

abstract class Disable extends Ability {
  const factory Disable(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final List<Action> fromActions,
      required final List<RoleEnum> validTargets,
      final IFClause? ifClause}) = _$Disable;
  const Disable._() : super._();

  factory Disable.fromJson(Map<String, dynamic> json) = _$Disable.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  List<Action> get fromActions => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DisableCopyWith<_$Disable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActivationCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$ActivationCopyWith(
          _$Activation value, $Res Function(_$Activation) then) =
      __$$ActivationCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      Action whenActivates,
      Who whoGains,
      AbilityType can,
      IFClause? ifClause});
}

/// @nodoc
class __$$ActivationCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$ActivationCopyWith<$Res> {
  __$$ActivationCopyWithImpl(
      _$Activation _value, $Res Function(_$Activation) _then)
      : super(_value, (v) => _then(v as _$Activation));

  @override
  _$Activation get _value => super._value as _$Activation;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? whenActivates = freezed,
    Object? whoGains = freezed,
    Object? can = freezed,
    Object? ifClause = freezed,
  }) {
    return _then(_$Activation(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      whenActivates: whenActivates == freezed
          ? _value.whenActivates
          : whenActivates // ignore: cast_nullable_to_non_nullable
              as Action,
      whoGains: whoGains == freezed
          ? _value.whoGains
          : whoGains // ignore: cast_nullable_to_non_nullable
              as Who,
      can: can == freezed
          ? _value.can
          : can // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Activation extends Activation {
  const _$Activation(
      {this.type = AbilityType.Activation,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      final List<RoleEnum> validTargets = const [],
      required this.whenActivates,
      required this.whoGains,
      required this.can,
      this.ifClause,
      final String? $type})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'activation',
        super._();

  factory _$Activation.fromJson(Map<String, dynamic> json) =>
      _$$ActivationFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  @JsonKey()
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final Action whenActivates;
  @override
  final Who whoGains;
  @override
  final AbilityType can;
  @override
  final IFClause? ifClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.activation(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, whenActivates: $whenActivates, whoGains: $whoGains, can: $can, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Activation &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality()
                .equals(other.whenActivates, whenActivates) &&
            const DeepCollectionEquality().equals(other.whoGains, whoGains) &&
            const DeepCollectionEquality().equals(other.can, can) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(whenActivates),
      const DeepCollectionEquality().hash(whoGains),
      const DeepCollectionEquality().hash(can),
      const DeepCollectionEquality().hash(ifClause));

  @JsonKey(ignore: true)
  @override
  _$$ActivationCopyWith<_$Activation> get copyWith =>
      __$$ActivationCopyWithImpl<_$Activation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return activation(type, whenS, everyClause, timesClause, validTargets,
        whenActivates, whoGains, can, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return activation?.call(type, whenS, everyClause, timesClause, validTargets,
        whenActivates, whoGains, can, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (activation != null) {
      return activation(type, whenS, everyClause, timesClause, validTargets,
          whenActivates, whoGains, can, ifClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return activation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return activation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (activation != null) {
      return activation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivationToJson(this);
  }
}

abstract class Activation extends Ability {
  const factory Activation(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      final List<RoleEnum> validTargets,
      required final Action whenActivates,
      required final Who whoGains,
      required final AbilityType can,
      final IFClause? ifClause}) = _$Activation;
  const Activation._() : super._();

  factory Activation.fromJson(Map<String, dynamic> json) =
      _$Activation.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  Action get whenActivates => throw _privateConstructorUsedError;
  Who get whoGains => throw _privateConstructorUsedError;
  AbilityType get can => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ActivationCopyWith<_$Activation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GiveCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$GiveCopyWith(_$Give value, $Res Function(_$Give) then) =
      __$$GiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      Action action,
      Stage whenAction,
      IFClause? ifClause});
}

/// @nodoc
class __$$GiveCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$GiveCopyWith<$Res> {
  __$$GiveCopyWithImpl(_$Give _value, $Res Function(_$Give) _then)
      : super(_value, (v) => _then(v as _$Give));

  @override
  _$Give get _value => super._value as _$Give;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? action = freezed,
    Object? whenAction = freezed,
    Object? ifClause = freezed,
  }) {
    return _then(_$Give(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
      whenAction: whenAction == freezed
          ? _value.whenAction
          : whenAction // ignore: cast_nullable_to_non_nullable
              as Stage,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Give extends Give {
  const _$Give(
      {this.type = AbilityType.Give,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required final List<RoleEnum> validTargets,
      required this.action,
      required this.whenAction,
      this.ifClause,
      final String? $type})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'give',
        super._();

  factory _$Give.fromJson(Map<String, dynamic> json) => _$$GiveFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final Action action;
  @override
  final Stage whenAction;
  @override
  final IFClause? ifClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.give(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, action: $action, whenAction: $whenAction, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Give &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality()
                .equals(other.whenAction, whenAction) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(whenAction),
      const DeepCollectionEquality().hash(ifClause));

  @JsonKey(ignore: true)
  @override
  _$$GiveCopyWith<_$Give> get copyWith =>
      __$$GiveCopyWithImpl<_$Give>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return give(type, whenS, everyClause, timesClause, validTargets, action,
        whenAction, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return give?.call(type, whenS, everyClause, timesClause, validTargets,
        action, whenAction, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (give != null) {
      return give(type, whenS, everyClause, timesClause, validTargets, action,
          whenAction, ifClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return give(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return give?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (give != null) {
      return give(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GiveToJson(this);
  }
}

abstract class Give extends Ability {
  const factory Give(
      {final AbilityType type,
      required final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      required final List<RoleEnum> validTargets,
      required final Action action,
      required final Stage whenAction,
      final IFClause? ifClause}) = _$Give;
  const Give._() : super._();

  factory Give.fromJson(Map<String, dynamic> json) = _$Give.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  Action get action => throw _privateConstructorUsedError;
  Stage get whenAction => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GiveCopyWith<_$Give> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReserveCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$$ReserveCopyWith(_$Reserve value, $Res Function(_$Reserve) then) =
      __$$ReserveCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      RoleEnum role,
      int priority,
      IFClause? ifClause});
}

/// @nodoc
class __$$ReserveCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$$ReserveCopyWith<$Res> {
  __$$ReserveCopyWithImpl(_$Reserve _value, $Res Function(_$Reserve) _then)
      : super(_value, (v) => _then(v as _$Reserve));

  @override
  _$Reserve get _value => super._value as _$Reserve;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
    Object? role = freezed,
    Object? priority = freezed,
    Object? ifClause = freezed,
  }) {
    return _then(_$Reserve(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      everyClause: everyClause == freezed
          ? _value.everyClause
          : everyClause // ignore: cast_nullable_to_non_nullable
              as EveryClause?,
      timesClause: timesClause == freezed
          ? _value.timesClause
          : timesClause // ignore: cast_nullable_to_non_nullable
              as TimesClause?,
      validTargets: validTargets == freezed
          ? _value._validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Reserve extends Reserve {
  const _$Reserve(
      {this.type = AbilityType.Reserve,
      this.whenS = Stage.All,
      this.everyClause,
      this.timesClause,
      final List<RoleEnum> validTargets = const [],
      required this.role,
      required this.priority,
      this.ifClause,
      final String? $type})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        _validTargets = validTargets,
        $type = $type ?? 'reserve',
        super._();

  factory _$Reserve.fromJson(Map<String, dynamic> json) =>
      _$$ReserveFromJson(json);

  @override
  @JsonKey()
  final AbilityType type;
  @override
  @JsonKey()
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  final List<RoleEnum> _validTargets;
  @override
  @JsonKey()
  List<RoleEnum> get validTargets {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validTargets);
  }

  @override
  final RoleEnum role;
  @override
  final int priority;
  @override
  final IFClause? ifClause;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Ability.reserve(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, role: $role, priority: $priority, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reserve &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.whenS, whenS) &&
            const DeepCollectionEquality()
                .equals(other.everyClause, everyClause) &&
            const DeepCollectionEquality()
                .equals(other.timesClause, timesClause) &&
            const DeepCollectionEquality()
                .equals(other._validTargets, _validTargets) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.ifClause, ifClause));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(whenS),
      const DeepCollectionEquality().hash(everyClause),
      const DeepCollectionEquality().hash(timesClause),
      const DeepCollectionEquality().hash(_validTargets),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(ifClause));

  @JsonKey(ignore: true)
  @override
  _$$ReserveCopyWith<_$Reserve> get copyWith =>
      __$$ReserveCopyWithImpl<_$Reserve>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)
        $default, {
    required TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)
        save,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)
        counter,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)
        recrute,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        guess,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        change,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)
        kill,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)
        disable,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)
        activation,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)
        give,
    required TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)
        reserve,
  }) {
    return reserve(type, whenS, everyClause, timesClause, validTargets, role,
        priority, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
  }) {
    return reserve?.call(type, whenS, everyClause, timesClause, validTargets,
        role, priority, ifClause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(AbilityType type, Stage whenS, EveryClause? everyClause,
            TimesClause? timesClause, List<RoleEnum> validTargets)?
        $default, {
    TResult Function(
            AbilityType type,
            Stage whenS,
            List<Action> saveFrom,
            SelfClause selfClause,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            UntilClause? untilClause,
            EveryClause? everyClause,
            TimesClause? timesClause,
            IFClause? ifClause)?
        save,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            AbilityType by,
            Who onWho,
            Cost? cost)?
        counter,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            bool willBeConverted,
            CostOn costOnHimOrAll,
            Cost? costTypeIfNotValid)?
        recrute,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            GuessType what,
            Cost? costIfRight,
            Cost? costIfWrong,
            CostOn? costOnIfRight,
            CostOn? costOnIfWrong,
            WhenClause? whenClause,
            FromActionClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        guess,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            AbilityType what,
            ChangeType change,
            List<RoleEnum> validTargets,
            WhenClause? whenClause,
            FromClause? fromClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        change,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            int effectesAfter,
            Stage effectesAfterStage,
            List<RoleEnum> cantSaveBy,
            Cost? costTypeForKill,
            Cost? costTypeIfWrong,
            WhenClause? whenClause,
            IFClause? ifClause,
            UntilClause? untilClause)?
        kill,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<Action> fromActions,
            List<RoleEnum> validTargets,
            IFClause? ifClause)?
        disable,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action whenActivates,
            Who whoGains,
            AbilityType can,
            IFClause? ifClause)?
        activation,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            Action action,
            Stage whenAction,
            IFClause? ifClause)?
        give,
    TResult Function(
            AbilityType type,
            Stage whenS,
            EveryClause? everyClause,
            TimesClause? timesClause,
            List<RoleEnum> validTargets,
            RoleEnum role,
            int priority,
            IFClause? ifClause)?
        reserve,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(type, whenS, everyClause, timesClause, validTargets, role,
          priority, ifClause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Ability value) $default, {
    required TResult Function(Save value) save,
    required TResult Function(Counter value) counter,
    required TResult Function(Recrute value) recrute,
    required TResult Function(Guess value) guess,
    required TResult Function(Change value) change,
    required TResult Function(Kill value) kill,
    required TResult Function(Disable value) disable,
    required TResult Function(Activation value) activation,
    required TResult Function(Give value) give,
    required TResult Function(Reserve value) reserve,
  }) {
    return reserve(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
  }) {
    return reserve?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Ability value)? $default, {
    TResult Function(Save value)? save,
    TResult Function(Counter value)? counter,
    TResult Function(Recrute value)? recrute,
    TResult Function(Guess value)? guess,
    TResult Function(Change value)? change,
    TResult Function(Kill value)? kill,
    TResult Function(Disable value)? disable,
    TResult Function(Activation value)? activation,
    TResult Function(Give value)? give,
    TResult Function(Reserve value)? reserve,
    required TResult orElse(),
  }) {
    if (reserve != null) {
      return reserve(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReserveToJson(this);
  }
}

abstract class Reserve extends Ability {
  const factory Reserve(
      {final AbilityType type,
      final Stage whenS,
      final EveryClause? everyClause,
      final TimesClause? timesClause,
      final List<RoleEnum> validTargets,
      required final RoleEnum role,
      required final int priority,
      final IFClause? ifClause}) = _$Reserve;
  const Reserve._() : super._();

  factory Reserve.fromJson(Map<String, dynamic> json) = _$Reserve.fromJson;

  @override
  AbilityType get type => throw _privateConstructorUsedError;
  @override
  Stage get whenS => throw _privateConstructorUsedError;
  @override
  EveryClause? get everyClause => throw _privateConstructorUsedError;
  @override
  TimesClause? get timesClause => throw _privateConstructorUsedError;
  @override
  List<RoleEnum> get validTargets => throw _privateConstructorUsedError;
  RoleEnum get role => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  IFClause? get ifClause => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ReserveCopyWith<_$Reserve> get copyWith =>
      throw _privateConstructorUsedError;
}
