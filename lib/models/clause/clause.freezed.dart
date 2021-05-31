// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'clause.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Clause _$ClauseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'every':
      return EveryClause.fromJson(json);
    case 'times':
      return TimesClause.fromJson(json);
    case 'self':
      return SelfClause.fromJson(json);
    case 'fromAction':
      return FromActionClause.fromJson(json);
    case 'when':
      return WhenClause.fromJson(json);
    case 'until':
      return UntilClause.fromJson(json);
    case 'from':
      return FromClause.fromJson(json);
    case 'iF':
      return IFClause.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ClauseTearOff {
  const _$ClauseTearOff();

  EveryClause every(
      {required int time,
      required int howManyEveryStage,
      int lastStageUsed = 0,
      int stageDone = 0}) {
    return EveryClause(
      time: time,
      howManyEveryStage: howManyEveryStage,
      lastStageUsed: lastStageUsed,
      stageDone: stageDone,
    );
  }

  TimesClause times(
      {required int time, required int howManyEveryStage, int done = 0}) {
    return TimesClause(
      time: time,
      howManyEveryStage: howManyEveryStage,
      done: done,
    );
  }

  SelfClause self({required int time, int done = 0}) {
    return SelfClause(
      time: time,
      done: done,
    );
  }

  FromActionClause fromAction({required Action action}) {
    return FromActionClause(
      action: action,
    );
  }

  WhenClause when({required Action action}) {
    return WhenClause(
      action: action,
    );
  }

  UntilClause until({required Action action}) {
    return UntilClause(
      action: action,
    );
  }

  FromClause from({required RoleEnum from, required RoleEnum to}) {
    return FromClause(
      from: from,
      to: to,
    );
  }

  IFClause iF(
      {List<RoleEnum>? target,
      AbilityType? targetFor,
      required Action action}) {
    return IFClause(
      target: target,
      targetFor: targetFor,
      action: action,
    );
  }

  Clause fromJson(Map<String, Object> json) {
    return Clause.fromJson(json);
  }
}

/// @nodoc
const $Clause = _$ClauseTearOff();

/// @nodoc
mixin _$Clause {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClauseCopyWith<$Res> {
  factory $ClauseCopyWith(Clause value, $Res Function(Clause) then) =
      _$ClauseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClauseCopyWithImpl<$Res> implements $ClauseCopyWith<$Res> {
  _$ClauseCopyWithImpl(this._value, this._then);

  final Clause _value;
  // ignore: unused_field
  final $Res Function(Clause) _then;
}

/// @nodoc
abstract class $EveryClauseCopyWith<$Res> {
  factory $EveryClauseCopyWith(
          EveryClause value, $Res Function(EveryClause) then) =
      _$EveryClauseCopyWithImpl<$Res>;
  $Res call(
      {int time, int howManyEveryStage, int lastStageUsed, int stageDone});
}

/// @nodoc
class _$EveryClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $EveryClauseCopyWith<$Res> {
  _$EveryClauseCopyWithImpl(
      EveryClause _value, $Res Function(EveryClause) _then)
      : super(_value, (v) => _then(v as EveryClause));

  @override
  EveryClause get _value => super._value as EveryClause;

  @override
  $Res call({
    Object? time = freezed,
    Object? howManyEveryStage = freezed,
    Object? lastStageUsed = freezed,
    Object? stageDone = freezed,
  }) {
    return _then(EveryClause(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      howManyEveryStage: howManyEveryStage == freezed
          ? _value.howManyEveryStage
          : howManyEveryStage // ignore: cast_nullable_to_non_nullable
              as int,
      lastStageUsed: lastStageUsed == freezed
          ? _value.lastStageUsed
          : lastStageUsed // ignore: cast_nullable_to_non_nullable
              as int,
      stageDone: stageDone == freezed
          ? _value.stageDone
          : stageDone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$EveryClause extends EveryClause {
  const _$EveryClause(
      {required this.time,
      required this.howManyEveryStage,
      this.lastStageUsed = 0,
      this.stageDone = 0})
      : super._();

  factory _$EveryClause.fromJson(Map<String, dynamic> json) =>
      _$_$EveryClauseFromJson(json);

  @override
  final int time;
  @override
  final int howManyEveryStage;
  @JsonKey(defaultValue: 0)
  @override
  final int lastStageUsed;
  @JsonKey(defaultValue: 0)
  @override
  final int stageDone;

  @override
  String toString() {
    return 'Clause.every(time: $time, howManyEveryStage: $howManyEveryStage, lastStageUsed: $lastStageUsed, stageDone: $stageDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EveryClause &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.howManyEveryStage, howManyEveryStage) ||
                const DeepCollectionEquality()
                    .equals(other.howManyEveryStage, howManyEveryStage)) &&
            (identical(other.lastStageUsed, lastStageUsed) ||
                const DeepCollectionEquality()
                    .equals(other.lastStageUsed, lastStageUsed)) &&
            (identical(other.stageDone, stageDone) ||
                const DeepCollectionEquality()
                    .equals(other.stageDone, stageDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(howManyEveryStage) ^
      const DeepCollectionEquality().hash(lastStageUsed) ^
      const DeepCollectionEquality().hash(stageDone);

  @JsonKey(ignore: true)
  @override
  $EveryClauseCopyWith<EveryClause> get copyWith =>
      _$EveryClauseCopyWithImpl<EveryClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return every(time, howManyEveryStage, lastStageUsed, stageDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (every != null) {
      return every(time, howManyEveryStage, lastStageUsed, stageDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return every(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (every != null) {
      return every(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EveryClauseToJson(this)..['runtimeType'] = 'every';
  }
}

abstract class EveryClause extends Clause {
  const factory EveryClause(
      {required int time,
      required int howManyEveryStage,
      int lastStageUsed,
      int stageDone}) = _$EveryClause;
  const EveryClause._() : super._();

  factory EveryClause.fromJson(Map<String, dynamic> json) =
      _$EveryClause.fromJson;

  int get time => throw _privateConstructorUsedError;
  int get howManyEveryStage => throw _privateConstructorUsedError;
  int get lastStageUsed => throw _privateConstructorUsedError;
  int get stageDone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EveryClauseCopyWith<EveryClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimesClauseCopyWith<$Res> {
  factory $TimesClauseCopyWith(
          TimesClause value, $Res Function(TimesClause) then) =
      _$TimesClauseCopyWithImpl<$Res>;
  $Res call({int time, int howManyEveryStage, int done});
}

/// @nodoc
class _$TimesClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $TimesClauseCopyWith<$Res> {
  _$TimesClauseCopyWithImpl(
      TimesClause _value, $Res Function(TimesClause) _then)
      : super(_value, (v) => _then(v as TimesClause));

  @override
  TimesClause get _value => super._value as TimesClause;

  @override
  $Res call({
    Object? time = freezed,
    Object? howManyEveryStage = freezed,
    Object? done = freezed,
  }) {
    return _then(TimesClause(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      howManyEveryStage: howManyEveryStage == freezed
          ? _value.howManyEveryStage
          : howManyEveryStage // ignore: cast_nullable_to_non_nullable
              as int,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$TimesClause extends TimesClause {
  const _$TimesClause(
      {required this.time, required this.howManyEveryStage, this.done = 0})
      : super._();

  factory _$TimesClause.fromJson(Map<String, dynamic> json) =>
      _$_$TimesClauseFromJson(json);

  @override
  final int time;
  @override
  final int howManyEveryStage;
  @JsonKey(defaultValue: 0)
  @override
  final int done;

  @override
  String toString() {
    return 'Clause.times(time: $time, howManyEveryStage: $howManyEveryStage, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TimesClause &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.howManyEveryStage, howManyEveryStage) ||
                const DeepCollectionEquality()
                    .equals(other.howManyEveryStage, howManyEveryStage)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(howManyEveryStage) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  $TimesClauseCopyWith<TimesClause> get copyWith =>
      _$TimesClauseCopyWithImpl<TimesClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return times(time, howManyEveryStage, done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (times != null) {
      return times(time, howManyEveryStage, done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return times(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (times != null) {
      return times(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TimesClauseToJson(this)..['runtimeType'] = 'times';
  }
}

abstract class TimesClause extends Clause {
  const factory TimesClause(
      {required int time,
      required int howManyEveryStage,
      int done}) = _$TimesClause;
  const TimesClause._() : super._();

  factory TimesClause.fromJson(Map<String, dynamic> json) =
      _$TimesClause.fromJson;

  int get time => throw _privateConstructorUsedError;
  int get howManyEveryStage => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimesClauseCopyWith<TimesClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfClauseCopyWith<$Res> {
  factory $SelfClauseCopyWith(
          SelfClause value, $Res Function(SelfClause) then) =
      _$SelfClauseCopyWithImpl<$Res>;
  $Res call({int time, int done});
}

/// @nodoc
class _$SelfClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $SelfClauseCopyWith<$Res> {
  _$SelfClauseCopyWithImpl(SelfClause _value, $Res Function(SelfClause) _then)
      : super(_value, (v) => _then(v as SelfClause));

  @override
  SelfClause get _value => super._value as SelfClause;

  @override
  $Res call({
    Object? time = freezed,
    Object? done = freezed,
  }) {
    return _then(SelfClause(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$SelfClause extends SelfClause {
  const _$SelfClause({required this.time, this.done = 0}) : super._();

  factory _$SelfClause.fromJson(Map<String, dynamic> json) =>
      _$_$SelfClauseFromJson(json);

  @override
  final int time;
  @JsonKey(defaultValue: 0)
  @override
  final int done;

  @override
  String toString() {
    return 'Clause.self(time: $time, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelfClause &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  $SelfClauseCopyWith<SelfClause> get copyWith =>
      _$SelfClauseCopyWithImpl<SelfClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return self(time, done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (self != null) {
      return self(time, done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return self(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (self != null) {
      return self(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$SelfClauseToJson(this)..['runtimeType'] = 'self';
  }
}

abstract class SelfClause extends Clause {
  const factory SelfClause({required int time, int done}) = _$SelfClause;
  const SelfClause._() : super._();

  factory SelfClause.fromJson(Map<String, dynamic> json) =
      _$SelfClause.fromJson;

  int get time => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelfClauseCopyWith<SelfClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromActionClauseCopyWith<$Res> {
  factory $FromActionClauseCopyWith(
          FromActionClause value, $Res Function(FromActionClause) then) =
      _$FromActionClauseCopyWithImpl<$Res>;
  $Res call({Action action});
}

/// @nodoc
class _$FromActionClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $FromActionClauseCopyWith<$Res> {
  _$FromActionClauseCopyWithImpl(
      FromActionClause _value, $Res Function(FromActionClause) _then)
      : super(_value, (v) => _then(v as FromActionClause));

  @override
  FromActionClause get _value => super._value as FromActionClause;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(FromActionClause(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$FromActionClause extends FromActionClause {
  const _$FromActionClause({required this.action}) : super._();

  factory _$FromActionClause.fromJson(Map<String, dynamic> json) =>
      _$_$FromActionClauseFromJson(json);

  @override
  final Action action;

  @override
  String toString() {
    return 'Clause.fromAction(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FromActionClause &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  $FromActionClauseCopyWith<FromActionClause> get copyWith =>
      _$FromActionClauseCopyWithImpl<FromActionClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return fromAction(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (fromAction != null) {
      return fromAction(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return fromAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (fromAction != null) {
      return fromAction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$FromActionClauseToJson(this)..['runtimeType'] = 'fromAction';
  }
}

abstract class FromActionClause extends Clause {
  const factory FromActionClause({required Action action}) = _$FromActionClause;
  const FromActionClause._() : super._();

  factory FromActionClause.fromJson(Map<String, dynamic> json) =
      _$FromActionClause.fromJson;

  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromActionClauseCopyWith<FromActionClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhenClauseCopyWith<$Res> {
  factory $WhenClauseCopyWith(
          WhenClause value, $Res Function(WhenClause) then) =
      _$WhenClauseCopyWithImpl<$Res>;
  $Res call({Action action});
}

/// @nodoc
class _$WhenClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $WhenClauseCopyWith<$Res> {
  _$WhenClauseCopyWithImpl(WhenClause _value, $Res Function(WhenClause) _then)
      : super(_value, (v) => _then(v as WhenClause));

  @override
  WhenClause get _value => super._value as WhenClause;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(WhenClause(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$WhenClause extends WhenClause {
  const _$WhenClause({required this.action}) : super._();

  factory _$WhenClause.fromJson(Map<String, dynamic> json) =>
      _$_$WhenClauseFromJson(json);

  @override
  final Action action;

  @override
  String toString() {
    return 'Clause.when(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WhenClause &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  $WhenClauseCopyWith<WhenClause> get copyWith =>
      _$WhenClauseCopyWithImpl<WhenClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return when(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (when != null) {
      return when(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return when(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (when != null) {
      return when(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WhenClauseToJson(this)..['runtimeType'] = 'when';
  }
}

abstract class WhenClause extends Clause {
  const factory WhenClause({required Action action}) = _$WhenClause;
  const WhenClause._() : super._();

  factory WhenClause.fromJson(Map<String, dynamic> json) =
      _$WhenClause.fromJson;

  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WhenClauseCopyWith<WhenClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UntilClauseCopyWith<$Res> {
  factory $UntilClauseCopyWith(
          UntilClause value, $Res Function(UntilClause) then) =
      _$UntilClauseCopyWithImpl<$Res>;
  $Res call({Action action});
}

/// @nodoc
class _$UntilClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $UntilClauseCopyWith<$Res> {
  _$UntilClauseCopyWithImpl(
      UntilClause _value, $Res Function(UntilClause) _then)
      : super(_value, (v) => _then(v as UntilClause));

  @override
  UntilClause get _value => super._value as UntilClause;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(UntilClause(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$UntilClause extends UntilClause {
  const _$UntilClause({required this.action}) : super._();

  factory _$UntilClause.fromJson(Map<String, dynamic> json) =>
      _$_$UntilClauseFromJson(json);

  @override
  final Action action;

  @override
  String toString() {
    return 'Clause.until(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UntilClause &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  $UntilClauseCopyWith<UntilClause> get copyWith =>
      _$UntilClauseCopyWithImpl<UntilClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return until(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (until != null) {
      return until(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return until(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (until != null) {
      return until(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UntilClauseToJson(this)..['runtimeType'] = 'until';
  }
}

abstract class UntilClause extends Clause {
  const factory UntilClause({required Action action}) = _$UntilClause;
  const UntilClause._() : super._();

  factory UntilClause.fromJson(Map<String, dynamic> json) =
      _$UntilClause.fromJson;

  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UntilClauseCopyWith<UntilClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromClauseCopyWith<$Res> {
  factory $FromClauseCopyWith(
          FromClause value, $Res Function(FromClause) then) =
      _$FromClauseCopyWithImpl<$Res>;
  $Res call({RoleEnum from, RoleEnum to});
}

/// @nodoc
class _$FromClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $FromClauseCopyWith<$Res> {
  _$FromClauseCopyWithImpl(FromClause _value, $Res Function(FromClause) _then)
      : super(_value, (v) => _then(v as FromClause));

  @override
  FromClause get _value => super._value as FromClause;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(FromClause(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$FromClause extends FromClause {
  const _$FromClause({required this.from, required this.to}) : super._();

  factory _$FromClause.fromJson(Map<String, dynamic> json) =>
      _$_$FromClauseFromJson(json);

  @override
  final RoleEnum from;
  @override
  final RoleEnum to;

  @override
  String toString() {
    return 'Clause.from(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FromClause &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  $FromClauseCopyWith<FromClause> get copyWith =>
      _$FromClauseCopyWithImpl<FromClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return from(this.from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(this.from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return from(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$FromClauseToJson(this)..['runtimeType'] = 'from';
  }
}

abstract class FromClause extends Clause {
  const factory FromClause({required RoleEnum from, required RoleEnum to}) =
      _$FromClause;
  const FromClause._() : super._();

  factory FromClause.fromJson(Map<String, dynamic> json) =
      _$FromClause.fromJson;

  RoleEnum get from => throw _privateConstructorUsedError;
  RoleEnum get to => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromClauseCopyWith<FromClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IFClauseCopyWith<$Res> {
  factory $IFClauseCopyWith(IFClause value, $Res Function(IFClause) then) =
      _$IFClauseCopyWithImpl<$Res>;
  $Res call({List<RoleEnum>? target, AbilityType? targetFor, Action action});
}

/// @nodoc
class _$IFClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements $IFClauseCopyWith<$Res> {
  _$IFClauseCopyWithImpl(IFClause _value, $Res Function(IFClause) _then)
      : super(_value, (v) => _then(v as IFClause));

  @override
  IFClause get _value => super._value as IFClause;

  @override
  $Res call({
    Object? target = freezed,
    Object? targetFor = freezed,
    Object? action = freezed,
  }) {
    return _then(IFClause(
      target: target == freezed
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as List<RoleEnum>?,
      targetFor: targetFor == freezed
          ? _value.targetFor
          : targetFor // ignore: cast_nullable_to_non_nullable
              as AbilityType?,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$IFClause extends IFClause {
  const _$IFClause({this.target, this.targetFor, required this.action})
      : super._();

  factory _$IFClause.fromJson(Map<String, dynamic> json) =>
      _$_$IFClauseFromJson(json);

  @override
  final List<RoleEnum>? target;
  @override
  final AbilityType? targetFor;
  @override
  final Action action;

  @override
  String toString() {
    return 'Clause.iF(target: $target, targetFor: $targetFor, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IFClause &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.targetFor, targetFor) ||
                const DeepCollectionEquality()
                    .equals(other.targetFor, targetFor)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(targetFor) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  $IFClauseCopyWith<IFClause> get copyWith =>
      _$IFClauseCopyWithImpl<IFClause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)
        every,
    required TResult Function(int time, int howManyEveryStage, int done) times,
    required TResult Function(int time, int done) self,
    required TResult Function(Action action) fromAction,
    required TResult Function(Action action) when,
    required TResult Function(Action action) until,
    required TResult Function(RoleEnum from, RoleEnum to) from,
    required TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)
        iF,
  }) {
    return iF(target, targetFor, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int time, int howManyEveryStage, int lastStageUsed, int stageDone)?
        every,
    TResult Function(int time, int howManyEveryStage, int done)? times,
    TResult Function(int time, int done)? self,
    TResult Function(Action action)? fromAction,
    TResult Function(Action action)? when,
    TResult Function(Action action)? until,
    TResult Function(RoleEnum from, RoleEnum to)? from,
    TResult Function(
            List<RoleEnum>? target, AbilityType? targetFor, Action action)?
        iF,
    required TResult orElse(),
  }) {
    if (iF != null) {
      return iF(target, targetFor, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EveryClause value) every,
    required TResult Function(TimesClause value) times,
    required TResult Function(SelfClause value) self,
    required TResult Function(FromActionClause value) fromAction,
    required TResult Function(WhenClause value) when,
    required TResult Function(UntilClause value) until,
    required TResult Function(FromClause value) from,
    required TResult Function(IFClause value) iF,
  }) {
    return iF(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
    required TResult orElse(),
  }) {
    if (iF != null) {
      return iF(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IFClauseToJson(this)..['runtimeType'] = 'iF';
  }
}

abstract class IFClause extends Clause {
  const factory IFClause(
      {List<RoleEnum>? target,
      AbilityType? targetFor,
      required Action action}) = _$IFClause;
  const IFClause._() : super._();

  factory IFClause.fromJson(Map<String, dynamic> json) = _$IFClause.fromJson;

  List<RoleEnum>? get target => throw _privateConstructorUsedError;
  AbilityType? get targetFor => throw _privateConstructorUsedError;
  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IFClauseCopyWith<IFClause> get copyWith =>
      throw _privateConstructorUsedError;
}
