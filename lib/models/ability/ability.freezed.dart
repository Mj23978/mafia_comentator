// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
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
      throw FallThroughError();
  }
}

/// @nodoc
class _$AbilityTearOff {
  const _$AbilityTearOff();

  _Ability call(
      {required AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets = const []}) {
    return _Ability(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
    );
  }

  Save save(
      {AbilityType type = AbilityType.Save,
      required Stage whenS,
      required List<Action> saveFrom,
      required SelfClause selfClause,
      required List<RoleEnum> validTargets,
      WhenClause? whenClause,
      FromActionClause? fromClause,
      UntilClause? untilClause,
      EveryClause? everyClause,
      TimesClause? timesClause,
      IFClause? ifClause}) {
    return Save(
      type: type,
      whenS: whenS,
      saveFrom: saveFrom,
      selfClause: selfClause,
      validTargets: validTargets,
      whenClause: whenClause,
      fromClause: fromClause,
      untilClause: untilClause,
      everyClause: everyClause,
      timesClause: timesClause,
      ifClause: ifClause,
    );
  }

  Counter counter(
      {AbilityType type = AbilityType.Counter,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required AbilityType by,
      required Who onWho,
      Cost? cost}) {
    return Counter(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      by: by,
      onWho: onWho,
      cost: cost,
    );
  }

  Recrute recrute(
      {AbilityType type = AbilityType.Recrute,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required bool willBeConverted,
      CostOn costOnHimOrAll = CostOn.None,
      Cost? costTypeIfNotValid}) {
    return Recrute(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      willBeConverted: willBeConverted,
      costOnHimOrAll: costOnHimOrAll,
      costTypeIfNotValid: costTypeIfNotValid,
    );
  }

  Guess guess(
      {AbilityType type = AbilityType.Guess,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required GuessType what,
      Cost? costIfRight,
      Cost? costIfWrong,
      CostOn? costOnIfRight,
      CostOn? costOnIfWrong,
      WhenClause? whenClause,
      FromActionClause? fromClause,
      IFClause? ifClause,
      UntilClause? untilClause}) {
    return Guess(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      what: what,
      costIfRight: costIfRight,
      costIfWrong: costIfWrong,
      costOnIfRight: costOnIfRight,
      costOnIfWrong: costOnIfWrong,
      whenClause: whenClause,
      fromClause: fromClause,
      ifClause: ifClause,
      untilClause: untilClause,
    );
  }

  Change change(
      {AbilityType type = AbilityType.Change,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required AbilityType what,
      required ChangeType change,
      required List<RoleEnum> validTargets,
      WhenClause? whenClause,
      FromClause? fromClause,
      IFClause? ifClause,
      UntilClause? untilClause}) {
    return Change(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      what: what,
      change: change,
      validTargets: validTargets,
      whenClause: whenClause,
      fromClause: fromClause,
      ifClause: ifClause,
      untilClause: untilClause,
    );
  }

  Kill kill(
      {AbilityType type = AbilityType.Kill,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required int effectesAfter,
      required Stage effectesAfterStage,
      List<RoleEnum> cantSaveBy = const [],
      Cost? costTypeForKill,
      Cost? costTypeIfWrong,
      WhenClause? whenClause,
      IFClause? ifClause,
      UntilClause? untilClause}) {
    return Kill(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      effectesAfter: effectesAfter,
      effectesAfterStage: effectesAfterStage,
      cantSaveBy: cantSaveBy,
      costTypeForKill: costTypeForKill,
      costTypeIfWrong: costTypeIfWrong,
      whenClause: whenClause,
      ifClause: ifClause,
      untilClause: untilClause,
    );
  }

  Disable disable(
      {AbilityType type = AbilityType.Disable,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<Action> fromActions,
      required List<RoleEnum> validTargets,
      IFClause? ifClause}) {
    return Disable(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      fromActions: fromActions,
      validTargets: validTargets,
      ifClause: ifClause,
    );
  }

  Activation activation(
      {AbilityType type = AbilityType.Activation,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets = const [],
      required Action whenActivates,
      required Who whoGains,
      required AbilityType can,
      IFClause? ifClause}) {
    return Activation(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      whenActivates: whenActivates,
      whoGains: whoGains,
      can: can,
      ifClause: ifClause,
    );
  }

  Give give(
      {AbilityType type = AbilityType.Give,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required Action action,
      required Stage whenAction,
      IFClause? ifClause}) {
    return Give(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      action: action,
      whenAction: whenAction,
      ifClause: ifClause,
    );
  }

  Reserve reserve(
      {AbilityType type = AbilityType.Reserve,
      Stage whenS = Stage.All,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets = const [],
      required RoleEnum role,
      required int priority,
      IFClause? ifClause}) {
    return Reserve(
      type: type,
      whenS: whenS,
      everyClause: everyClause,
      timesClause: timesClause,
      validTargets: validTargets,
      role: role,
      priority: priority,
      ifClause: ifClause,
    );
  }

  Ability fromJson(Map<String, Object> json) {
    return Ability.fromJson(json);
  }
}

/// @nodoc
const $Ability = _$AbilityTearOff();

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
abstract class _$AbilityCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory _$AbilityCopyWith(_Ability value, $Res Function(_Ability) then) =
      __$AbilityCopyWithImpl<$Res>;
  @override
  $Res call(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets});
}

/// @nodoc
class __$AbilityCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements _$AbilityCopyWith<$Res> {
  __$AbilityCopyWithImpl(_Ability _value, $Res Function(_Ability) _then)
      : super(_value, (v) => _then(v as _Ability));

  @override
  _Ability get _value => super._value as _Ability;

  @override
  $Res call({
    Object? type = freezed,
    Object? whenS = freezed,
    Object? everyClause = freezed,
    Object? timesClause = freezed,
    Object? validTargets = freezed,
  }) {
    return _then(_Ability(
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

@JsonSerializable()

/// @nodoc
class _$_Ability extends _Ability {
  const _$_Ability(
      {required this.type,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      this.validTargets = const []})
      : super._();

  factory _$_Ability.fromJson(Map<String, dynamic> json) =>
      _$_$_AbilityFromJson(json);

  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @JsonKey(defaultValue: const [])
  @override
  final List<RoleEnum> validTargets;

  @override
  String toString() {
    return 'Ability(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ability &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets);

  @JsonKey(ignore: true)
  @override
  _$AbilityCopyWith<_Ability> get copyWith =>
      __$AbilityCopyWithImpl<_Ability>(this, _$identity);

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
    return _$_$_AbilityToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _Ability extends Ability {
  const factory _Ability(
      {required AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets}) = _$_Ability;
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
  _$AbilityCopyWith<_Ability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
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
class _$SaveCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;

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
    return _then(Save(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AbilityType,
      whenS: whenS == freezed
          ? _value.whenS
          : whenS // ignore: cast_nullable_to_non_nullable
              as Stage,
      saveFrom: saveFrom == freezed
          ? _value.saveFrom
          : saveFrom // ignore: cast_nullable_to_non_nullable
              as List<Action>,
      selfClause: selfClause == freezed
          ? _value.selfClause
          : selfClause // ignore: cast_nullable_to_non_nullable
              as SelfClause,
      validTargets: validTargets == freezed
          ? _value.validTargets
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

@JsonSerializable()

/// @nodoc
class _$Save extends Save {
  const _$Save(
      {this.type = AbilityType.Save,
      required this.whenS,
      required this.saveFrom,
      required this.selfClause,
      required this.validTargets,
      this.whenClause,
      this.fromClause,
      this.untilClause,
      this.everyClause,
      this.timesClause,
      this.ifClause})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Save.fromJson(Map<String, dynamic> json) => _$_$SaveFromJson(json);

  @JsonKey(defaultValue: AbilityType.Save)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final List<Action> saveFrom;
  @override
  final SelfClause selfClause;
  @override
  final List<RoleEnum> validTargets;
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

  @override
  String toString() {
    return 'Ability.save(type: $type, whenS: $whenS, saveFrom: $saveFrom, selfClause: $selfClause, validTargets: $validTargets, whenClause: $whenClause, fromClause: $fromClause, untilClause: $untilClause, everyClause: $everyClause, timesClause: $timesClause, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Save &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.saveFrom, saveFrom) ||
                const DeepCollectionEquality()
                    .equals(other.saveFrom, saveFrom)) &&
            (identical(other.selfClause, selfClause) ||
                const DeepCollectionEquality()
                    .equals(other.selfClause, selfClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.whenClause, whenClause) ||
                const DeepCollectionEquality()
                    .equals(other.whenClause, whenClause)) &&
            (identical(other.fromClause, fromClause) ||
                const DeepCollectionEquality()
                    .equals(other.fromClause, fromClause)) &&
            (identical(other.untilClause, untilClause) ||
                const DeepCollectionEquality()
                    .equals(other.untilClause, untilClause)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(saveFrom) ^
      const DeepCollectionEquality().hash(selfClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(whenClause) ^
      const DeepCollectionEquality().hash(fromClause) ^
      const DeepCollectionEquality().hash(untilClause) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(ifClause);

  @JsonKey(ignore: true)
  @override
  $SaveCopyWith<Save> get copyWith =>
      _$SaveCopyWithImpl<Save>(this, _$identity);

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
    return _$_$SaveToJson(this)..['runtimeType'] = 'save';
  }
}

abstract class Save extends Ability {
  const factory Save(
      {AbilityType type,
      required Stage whenS,
      required List<Action> saveFrom,
      required SelfClause selfClause,
      required List<RoleEnum> validTargets,
      WhenClause? whenClause,
      FromActionClause? fromClause,
      UntilClause? untilClause,
      EveryClause? everyClause,
      TimesClause? timesClause,
      IFClause? ifClause}) = _$Save;
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
  $SaveCopyWith<Save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $CounterCopyWith(Counter value, $Res Function(Counter) then) =
      _$CounterCopyWithImpl<$Res>;
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
class _$CounterCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $CounterCopyWith<$Res> {
  _$CounterCopyWithImpl(Counter _value, $Res Function(Counter) _then)
      : super(_value, (v) => _then(v as Counter));

  @override
  Counter get _value => super._value as Counter;

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
    return _then(Counter(
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

@JsonSerializable()

/// @nodoc
class _$Counter extends Counter {
  const _$Counter(
      {this.type = AbilityType.Counter,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.validTargets,
      required this.by,
      required this.onWho,
      this.cost})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Counter.fromJson(Map<String, dynamic> json) =>
      _$_$CounterFromJson(json);

  @JsonKey(defaultValue: AbilityType.Counter)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final List<RoleEnum> validTargets;
  @override
  final AbilityType by;
  @override
  final Who onWho;
  @override
  final Cost? cost;

  @override
  String toString() {
    return 'Ability.counter(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, by: $by, onWho: $onWho, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Counter &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.by, by) ||
                const DeepCollectionEquality().equals(other.by, by)) &&
            (identical(other.onWho, onWho) ||
                const DeepCollectionEquality().equals(other.onWho, onWho)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(by) ^
      const DeepCollectionEquality().hash(onWho) ^
      const DeepCollectionEquality().hash(cost);

  @JsonKey(ignore: true)
  @override
  $CounterCopyWith<Counter> get copyWith =>
      _$CounterCopyWithImpl<Counter>(this, _$identity);

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
    return _$_$CounterToJson(this)..['runtimeType'] = 'counter';
  }
}

abstract class Counter extends Ability {
  const factory Counter(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required AbilityType by,
      required Who onWho,
      Cost? cost}) = _$Counter;
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
  $CounterCopyWith<Counter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecruteCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $RecruteCopyWith(Recrute value, $Res Function(Recrute) then) =
      _$RecruteCopyWithImpl<$Res>;
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
class _$RecruteCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $RecruteCopyWith<$Res> {
  _$RecruteCopyWithImpl(Recrute _value, $Res Function(Recrute) _then)
      : super(_value, (v) => _then(v as Recrute));

  @override
  Recrute get _value => super._value as Recrute;

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
    return _then(Recrute(
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

@JsonSerializable()

/// @nodoc
class _$Recrute extends Recrute {
  const _$Recrute(
      {this.type = AbilityType.Recrute,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.validTargets,
      required this.willBeConverted,
      this.costOnHimOrAll = CostOn.None,
      this.costTypeIfNotValid})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Recrute.fromJson(Map<String, dynamic> json) =>
      _$_$RecruteFromJson(json);

  @JsonKey(defaultValue: AbilityType.Recrute)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final List<RoleEnum> validTargets;
  @override
  final bool willBeConverted;
  @JsonKey(defaultValue: CostOn.None)
  @override
  final CostOn costOnHimOrAll;
  @override
  final Cost? costTypeIfNotValid;

  @override
  String toString() {
    return 'Ability.recrute(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, willBeConverted: $willBeConverted, costOnHimOrAll: $costOnHimOrAll, costTypeIfNotValid: $costTypeIfNotValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Recrute &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.willBeConverted, willBeConverted) ||
                const DeepCollectionEquality()
                    .equals(other.willBeConverted, willBeConverted)) &&
            (identical(other.costOnHimOrAll, costOnHimOrAll) ||
                const DeepCollectionEquality()
                    .equals(other.costOnHimOrAll, costOnHimOrAll)) &&
            (identical(other.costTypeIfNotValid, costTypeIfNotValid) ||
                const DeepCollectionEquality()
                    .equals(other.costTypeIfNotValid, costTypeIfNotValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(willBeConverted) ^
      const DeepCollectionEquality().hash(costOnHimOrAll) ^
      const DeepCollectionEquality().hash(costTypeIfNotValid);

  @JsonKey(ignore: true)
  @override
  $RecruteCopyWith<Recrute> get copyWith =>
      _$RecruteCopyWithImpl<Recrute>(this, _$identity);

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
    return _$_$RecruteToJson(this)..['runtimeType'] = 'recrute';
  }
}

abstract class Recrute extends Ability {
  const factory Recrute(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required bool willBeConverted,
      CostOn costOnHimOrAll,
      Cost? costTypeIfNotValid}) = _$Recrute;
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
  $RecruteCopyWith<Recrute> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $GuessCopyWith(Guess value, $Res Function(Guess) then) =
      _$GuessCopyWithImpl<$Res>;
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
class _$GuessCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $GuessCopyWith<$Res> {
  _$GuessCopyWithImpl(Guess _value, $Res Function(Guess) _then)
      : super(_value, (v) => _then(v as Guess));

  @override
  Guess get _value => super._value as Guess;

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
    return _then(Guess(
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

@JsonSerializable()

/// @nodoc
class _$Guess extends Guess {
  const _$Guess(
      {this.type = AbilityType.Guess,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.validTargets,
      required this.what,
      this.costIfRight,
      this.costIfWrong,
      this.costOnIfRight,
      this.costOnIfWrong,
      this.whenClause,
      this.fromClause,
      this.ifClause,
      this.untilClause})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null ||
            ifClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Guess.fromJson(Map<String, dynamic> json) =>
      _$_$GuessFromJson(json);

  @JsonKey(defaultValue: AbilityType.Guess)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final List<RoleEnum> validTargets;
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

  @override
  String toString() {
    return 'Ability.guess(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, what: $what, costIfRight: $costIfRight, costIfWrong: $costIfWrong, costOnIfRight: $costOnIfRight, costOnIfWrong: $costOnIfWrong, whenClause: $whenClause, fromClause: $fromClause, ifClause: $ifClause, untilClause: $untilClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Guess &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.what, what) ||
                const DeepCollectionEquality().equals(other.what, what)) &&
            (identical(other.costIfRight, costIfRight) ||
                const DeepCollectionEquality()
                    .equals(other.costIfRight, costIfRight)) &&
            (identical(other.costIfWrong, costIfWrong) ||
                const DeepCollectionEquality()
                    .equals(other.costIfWrong, costIfWrong)) &&
            (identical(other.costOnIfRight, costOnIfRight) ||
                const DeepCollectionEquality()
                    .equals(other.costOnIfRight, costOnIfRight)) &&
            (identical(other.costOnIfWrong, costOnIfWrong) ||
                const DeepCollectionEquality()
                    .equals(other.costOnIfWrong, costOnIfWrong)) &&
            (identical(other.whenClause, whenClause) ||
                const DeepCollectionEquality()
                    .equals(other.whenClause, whenClause)) &&
            (identical(other.fromClause, fromClause) ||
                const DeepCollectionEquality()
                    .equals(other.fromClause, fromClause)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)) &&
            (identical(other.untilClause, untilClause) ||
                const DeepCollectionEquality()
                    .equals(other.untilClause, untilClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(what) ^
      const DeepCollectionEquality().hash(costIfRight) ^
      const DeepCollectionEquality().hash(costIfWrong) ^
      const DeepCollectionEquality().hash(costOnIfRight) ^
      const DeepCollectionEquality().hash(costOnIfWrong) ^
      const DeepCollectionEquality().hash(whenClause) ^
      const DeepCollectionEquality().hash(fromClause) ^
      const DeepCollectionEquality().hash(ifClause) ^
      const DeepCollectionEquality().hash(untilClause);

  @JsonKey(ignore: true)
  @override
  $GuessCopyWith<Guess> get copyWith =>
      _$GuessCopyWithImpl<Guess>(this, _$identity);

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
    return _$_$GuessToJson(this)..['runtimeType'] = 'guess';
  }
}

abstract class Guess extends Ability {
  const factory Guess(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required GuessType what,
      Cost? costIfRight,
      Cost? costIfWrong,
      CostOn? costOnIfRight,
      CostOn? costOnIfWrong,
      WhenClause? whenClause,
      FromActionClause? fromClause,
      IFClause? ifClause,
      UntilClause? untilClause}) = _$Guess;
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
  $GuessCopyWith<Guess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $ChangeCopyWith(Change value, $Res Function(Change) then) =
      _$ChangeCopyWithImpl<$Res>;
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
class _$ChangeCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $ChangeCopyWith<$Res> {
  _$ChangeCopyWithImpl(Change _value, $Res Function(Change) _then)
      : super(_value, (v) => _then(v as Change));

  @override
  Change get _value => super._value as Change;

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
    return _then(Change(
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
          ? _value.validTargets
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

@JsonSerializable()

/// @nodoc
class _$Change extends Change {
  const _$Change(
      {this.type = AbilityType.Change,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.what,
      required this.change,
      required this.validTargets,
      this.whenClause,
      this.fromClause,
      this.ifClause,
      this.untilClause})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null ||
            ifClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Change.fromJson(Map<String, dynamic> json) =>
      _$_$ChangeFromJson(json);

  @JsonKey(defaultValue: AbilityType.Change)
  @override
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
  @override
  final List<RoleEnum> validTargets;
  @override
  final WhenClause? whenClause;
  @override
  final FromClause? fromClause;
  @override
  final IFClause? ifClause;
  @override
  final UntilClause? untilClause;

  @override
  String toString() {
    return 'Ability.change(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, what: $what, change: $change, validTargets: $validTargets, whenClause: $whenClause, fromClause: $fromClause, ifClause: $ifClause, untilClause: $untilClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Change &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.what, what) ||
                const DeepCollectionEquality().equals(other.what, what)) &&
            (identical(other.change, change) ||
                const DeepCollectionEquality().equals(other.change, change)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.whenClause, whenClause) ||
                const DeepCollectionEquality()
                    .equals(other.whenClause, whenClause)) &&
            (identical(other.fromClause, fromClause) ||
                const DeepCollectionEquality()
                    .equals(other.fromClause, fromClause)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)) &&
            (identical(other.untilClause, untilClause) ||
                const DeepCollectionEquality()
                    .equals(other.untilClause, untilClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(what) ^
      const DeepCollectionEquality().hash(change) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(whenClause) ^
      const DeepCollectionEquality().hash(fromClause) ^
      const DeepCollectionEquality().hash(ifClause) ^
      const DeepCollectionEquality().hash(untilClause);

  @JsonKey(ignore: true)
  @override
  $ChangeCopyWith<Change> get copyWith =>
      _$ChangeCopyWithImpl<Change>(this, _$identity);

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
    return _$_$ChangeToJson(this)..['runtimeType'] = 'change';
  }
}

abstract class Change extends Ability {
  const factory Change(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required AbilityType what,
      required ChangeType change,
      required List<RoleEnum> validTargets,
      WhenClause? whenClause,
      FromClause? fromClause,
      IFClause? ifClause,
      UntilClause? untilClause}) = _$Change;
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
  $ChangeCopyWith<Change> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KillCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $KillCopyWith(Kill value, $Res Function(Kill) then) =
      _$KillCopyWithImpl<$Res>;
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
class _$KillCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $KillCopyWith<$Res> {
  _$KillCopyWithImpl(Kill _value, $Res Function(Kill) _then)
      : super(_value, (v) => _then(v as Kill));

  @override
  Kill get _value => super._value as Kill;

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
    return _then(Kill(
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
      effectesAfter: effectesAfter == freezed
          ? _value.effectesAfter
          : effectesAfter // ignore: cast_nullable_to_non_nullable
              as int,
      effectesAfterStage: effectesAfterStage == freezed
          ? _value.effectesAfterStage
          : effectesAfterStage // ignore: cast_nullable_to_non_nullable
              as Stage,
      cantSaveBy: cantSaveBy == freezed
          ? _value.cantSaveBy
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

@JsonSerializable()

/// @nodoc
class _$Kill extends Kill {
  const _$Kill(
      {this.type = AbilityType.Kill,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.validTargets,
      required this.effectesAfter,
      required this.effectesAfterStage,
      this.cantSaveBy = const [],
      this.costTypeForKill,
      this.costTypeIfWrong,
      this.whenClause,
      this.ifClause,
      this.untilClause})
      : assert(everyClause != null ||
            timesClause != null ||
            whenClause != null ||
            untilClause != null ||
            ifClause != null),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Kill.fromJson(Map<String, dynamic> json) => _$_$KillFromJson(json);

  @JsonKey(defaultValue: AbilityType.Kill)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final List<RoleEnum> validTargets;
  @override
  final int effectesAfter;
  @override
  final Stage effectesAfterStage;
  @JsonKey(defaultValue: const [])
  @override
  final List<RoleEnum> cantSaveBy;
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

  @override
  String toString() {
    return 'Ability.kill(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, effectesAfter: $effectesAfter, effectesAfterStage: $effectesAfterStage, cantSaveBy: $cantSaveBy, costTypeForKill: $costTypeForKill, costTypeIfWrong: $costTypeIfWrong, whenClause: $whenClause, ifClause: $ifClause, untilClause: $untilClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Kill &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.effectesAfter, effectesAfter) ||
                const DeepCollectionEquality()
                    .equals(other.effectesAfter, effectesAfter)) &&
            (identical(other.effectesAfterStage, effectesAfterStage) ||
                const DeepCollectionEquality()
                    .equals(other.effectesAfterStage, effectesAfterStage)) &&
            (identical(other.cantSaveBy, cantSaveBy) ||
                const DeepCollectionEquality()
                    .equals(other.cantSaveBy, cantSaveBy)) &&
            (identical(other.costTypeForKill, costTypeForKill) ||
                const DeepCollectionEquality()
                    .equals(other.costTypeForKill, costTypeForKill)) &&
            (identical(other.costTypeIfWrong, costTypeIfWrong) ||
                const DeepCollectionEquality()
                    .equals(other.costTypeIfWrong, costTypeIfWrong)) &&
            (identical(other.whenClause, whenClause) ||
                const DeepCollectionEquality()
                    .equals(other.whenClause, whenClause)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)) &&
            (identical(other.untilClause, untilClause) ||
                const DeepCollectionEquality()
                    .equals(other.untilClause, untilClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(effectesAfter) ^
      const DeepCollectionEquality().hash(effectesAfterStage) ^
      const DeepCollectionEquality().hash(cantSaveBy) ^
      const DeepCollectionEquality().hash(costTypeForKill) ^
      const DeepCollectionEquality().hash(costTypeIfWrong) ^
      const DeepCollectionEquality().hash(whenClause) ^
      const DeepCollectionEquality().hash(ifClause) ^
      const DeepCollectionEquality().hash(untilClause);

  @JsonKey(ignore: true)
  @override
  $KillCopyWith<Kill> get copyWith =>
      _$KillCopyWithImpl<Kill>(this, _$identity);

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
    return _$_$KillToJson(this)..['runtimeType'] = 'kill';
  }
}

abstract class Kill extends Ability {
  const factory Kill(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required int effectesAfter,
      required Stage effectesAfterStage,
      List<RoleEnum> cantSaveBy,
      Cost? costTypeForKill,
      Cost? costTypeIfWrong,
      WhenClause? whenClause,
      IFClause? ifClause,
      UntilClause? untilClause}) = _$Kill;
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
  $KillCopyWith<Kill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisableCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $DisableCopyWith(Disable value, $Res Function(Disable) then) =
      _$DisableCopyWithImpl<$Res>;
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
class _$DisableCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $DisableCopyWith<$Res> {
  _$DisableCopyWithImpl(Disable _value, $Res Function(Disable) _then)
      : super(_value, (v) => _then(v as Disable));

  @override
  Disable get _value => super._value as Disable;

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
    return _then(Disable(
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
          ? _value.fromActions
          : fromActions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
      validTargets: validTargets == freezed
          ? _value.validTargets
          : validTargets // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>,
      ifClause: ifClause == freezed
          ? _value.ifClause
          : ifClause // ignore: cast_nullable_to_non_nullable
              as IFClause?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Disable extends Disable {
  const _$Disable(
      {this.type = AbilityType.Disable,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.fromActions,
      required this.validTargets,
      this.ifClause})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Disable.fromJson(Map<String, dynamic> json) =>
      _$_$DisableFromJson(json);

  @JsonKey(defaultValue: AbilityType.Disable)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final List<Action> fromActions;
  @override
  final List<RoleEnum> validTargets;
  @override
  final IFClause? ifClause;

  @override
  String toString() {
    return 'Ability.disable(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, fromActions: $fromActions, validTargets: $validTargets, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Disable &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.fromActions, fromActions) ||
                const DeepCollectionEquality()
                    .equals(other.fromActions, fromActions)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(fromActions) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(ifClause);

  @JsonKey(ignore: true)
  @override
  $DisableCopyWith<Disable> get copyWith =>
      _$DisableCopyWithImpl<Disable>(this, _$identity);

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
    return _$_$DisableToJson(this)..['runtimeType'] = 'disable';
  }
}

abstract class Disable extends Ability {
  const factory Disable(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<Action> fromActions,
      required List<RoleEnum> validTargets,
      IFClause? ifClause}) = _$Disable;
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
  $DisableCopyWith<Disable> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivationCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $ActivationCopyWith(
          Activation value, $Res Function(Activation) then) =
      _$ActivationCopyWithImpl<$Res>;
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
class _$ActivationCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $ActivationCopyWith<$Res> {
  _$ActivationCopyWithImpl(Activation _value, $Res Function(Activation) _then)
      : super(_value, (v) => _then(v as Activation));

  @override
  Activation get _value => super._value as Activation;

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
    return _then(Activation(
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

@JsonSerializable()

/// @nodoc
class _$Activation extends Activation {
  const _$Activation(
      {this.type = AbilityType.Activation,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      this.validTargets = const [],
      required this.whenActivates,
      required this.whoGains,
      required this.can,
      this.ifClause})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Activation.fromJson(Map<String, dynamic> json) =>
      _$_$ActivationFromJson(json);

  @JsonKey(defaultValue: AbilityType.Activation)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @JsonKey(defaultValue: const [])
  @override
  final List<RoleEnum> validTargets;
  @override
  final Action whenActivates;
  @override
  final Who whoGains;
  @override
  final AbilityType can;
  @override
  final IFClause? ifClause;

  @override
  String toString() {
    return 'Ability.activation(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, whenActivates: $whenActivates, whoGains: $whoGains, can: $can, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Activation &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.whenActivates, whenActivates) ||
                const DeepCollectionEquality()
                    .equals(other.whenActivates, whenActivates)) &&
            (identical(other.whoGains, whoGains) ||
                const DeepCollectionEquality()
                    .equals(other.whoGains, whoGains)) &&
            (identical(other.can, can) ||
                const DeepCollectionEquality().equals(other.can, can)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(whenActivates) ^
      const DeepCollectionEquality().hash(whoGains) ^
      const DeepCollectionEquality().hash(can) ^
      const DeepCollectionEquality().hash(ifClause);

  @JsonKey(ignore: true)
  @override
  $ActivationCopyWith<Activation> get copyWith =>
      _$ActivationCopyWithImpl<Activation>(this, _$identity);

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
    return _$_$ActivationToJson(this)..['runtimeType'] = 'activation';
  }
}

abstract class Activation extends Ability {
  const factory Activation(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      required Action whenActivates,
      required Who whoGains,
      required AbilityType can,
      IFClause? ifClause}) = _$Activation;
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
  $ActivationCopyWith<Activation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $GiveCopyWith(Give value, $Res Function(Give) then) =
      _$GiveCopyWithImpl<$Res>;
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
class _$GiveCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $GiveCopyWith<$Res> {
  _$GiveCopyWithImpl(Give _value, $Res Function(Give) _then)
      : super(_value, (v) => _then(v as Give));

  @override
  Give get _value => super._value as Give;

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
    return _then(Give(
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

@JsonSerializable()

/// @nodoc
class _$Give extends Give {
  const _$Give(
      {this.type = AbilityType.Give,
      required this.whenS,
      this.everyClause,
      this.timesClause,
      required this.validTargets,
      required this.action,
      required this.whenAction,
      this.ifClause})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Give.fromJson(Map<String, dynamic> json) => _$_$GiveFromJson(json);

  @JsonKey(defaultValue: AbilityType.Give)
  @override
  final AbilityType type;
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @override
  final List<RoleEnum> validTargets;
  @override
  final Action action;
  @override
  final Stage whenAction;
  @override
  final IFClause? ifClause;

  @override
  String toString() {
    return 'Ability.give(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, action: $action, whenAction: $whenAction, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Give &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.whenAction, whenAction) ||
                const DeepCollectionEquality()
                    .equals(other.whenAction, whenAction)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(whenAction) ^
      const DeepCollectionEquality().hash(ifClause);

  @JsonKey(ignore: true)
  @override
  $GiveCopyWith<Give> get copyWith =>
      _$GiveCopyWithImpl<Give>(this, _$identity);

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
    return _$_$GiveToJson(this)..['runtimeType'] = 'give';
  }
}

abstract class Give extends Ability {
  const factory Give(
      {AbilityType type,
      required Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      required List<RoleEnum> validTargets,
      required Action action,
      required Stage whenAction,
      IFClause? ifClause}) = _$Give;
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
  $GiveCopyWith<Give> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveCopyWith<$Res> implements $AbilityCopyWith<$Res> {
  factory $ReserveCopyWith(Reserve value, $Res Function(Reserve) then) =
      _$ReserveCopyWithImpl<$Res>;
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
class _$ReserveCopyWithImpl<$Res> extends _$AbilityCopyWithImpl<$Res>
    implements $ReserveCopyWith<$Res> {
  _$ReserveCopyWithImpl(Reserve _value, $Res Function(Reserve) _then)
      : super(_value, (v) => _then(v as Reserve));

  @override
  Reserve get _value => super._value as Reserve;

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
    return _then(Reserve(
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

@JsonSerializable()

/// @nodoc
class _$Reserve extends Reserve {
  const _$Reserve(
      {this.type = AbilityType.Reserve,
      this.whenS = Stage.All,
      this.everyClause,
      this.timesClause,
      this.validTargets = const [],
      required this.role,
      required this.priority,
      this.ifClause})
      : assert(everyClause != null ? timesClause == null : true,
            'Cant Use Every Clause with Times Clause'),
        assert(everyClause != null ? timesClause == null : true,
            'Cant Use Times Clause with Every Clause'),
        super._();

  factory _$Reserve.fromJson(Map<String, dynamic> json) =>
      _$_$ReserveFromJson(json);

  @JsonKey(defaultValue: AbilityType.Reserve)
  @override
  final AbilityType type;
  @JsonKey(defaultValue: Stage.All)
  @override
  final Stage whenS;
  @override
  final EveryClause? everyClause;
  @override
  final TimesClause? timesClause;
  @JsonKey(defaultValue: const [])
  @override
  final List<RoleEnum> validTargets;
  @override
  final RoleEnum role;
  @override
  final int priority;
  @override
  final IFClause? ifClause;

  @override
  String toString() {
    return 'Ability.reserve(type: $type, whenS: $whenS, everyClause: $everyClause, timesClause: $timesClause, validTargets: $validTargets, role: $role, priority: $priority, ifClause: $ifClause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Reserve &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.whenS, whenS) ||
                const DeepCollectionEquality().equals(other.whenS, whenS)) &&
            (identical(other.everyClause, everyClause) ||
                const DeepCollectionEquality()
                    .equals(other.everyClause, everyClause)) &&
            (identical(other.timesClause, timesClause) ||
                const DeepCollectionEquality()
                    .equals(other.timesClause, timesClause)) &&
            (identical(other.validTargets, validTargets) ||
                const DeepCollectionEquality()
                    .equals(other.validTargets, validTargets)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.ifClause, ifClause) ||
                const DeepCollectionEquality()
                    .equals(other.ifClause, ifClause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(whenS) ^
      const DeepCollectionEquality().hash(everyClause) ^
      const DeepCollectionEquality().hash(timesClause) ^
      const DeepCollectionEquality().hash(validTargets) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(ifClause);

  @JsonKey(ignore: true)
  @override
  $ReserveCopyWith<Reserve> get copyWith =>
      _$ReserveCopyWithImpl<Reserve>(this, _$identity);

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
    return _$_$ReserveToJson(this)..['runtimeType'] = 'reserve';
  }
}

abstract class Reserve extends Ability {
  const factory Reserve(
      {AbilityType type,
      Stage whenS,
      EveryClause? everyClause,
      TimesClause? timesClause,
      List<RoleEnum> validTargets,
      required RoleEnum role,
      required int priority,
      IFClause? ifClause}) = _$Reserve;
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
  $ReserveCopyWith<Reserve> get copyWith => throw _privateConstructorUsedError;
}
