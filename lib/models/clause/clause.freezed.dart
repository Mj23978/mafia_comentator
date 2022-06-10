// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clause.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Clause _$ClauseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
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
      throw CheckedFromJsonException(json, 'runtimeType', 'Clause',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

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
  TResult? whenOrNull<TResult extends Object?>({
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
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
abstract class _$$EveryClauseCopyWith<$Res> {
  factory _$$EveryClauseCopyWith(
          _$EveryClause value, $Res Function(_$EveryClause) then) =
      __$$EveryClauseCopyWithImpl<$Res>;
  $Res call(
      {int time, int howManyEveryStage, int lastStageUsed, int stageDone});
}

/// @nodoc
class __$$EveryClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$EveryClauseCopyWith<$Res> {
  __$$EveryClauseCopyWithImpl(
      _$EveryClause _value, $Res Function(_$EveryClause) _then)
      : super(_value, (v) => _then(v as _$EveryClause));

  @override
  _$EveryClause get _value => super._value as _$EveryClause;

  @override
  $Res call({
    Object? time = freezed,
    Object? howManyEveryStage = freezed,
    Object? lastStageUsed = freezed,
    Object? stageDone = freezed,
  }) {
    return _then(_$EveryClause(
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

/// @nodoc
@JsonSerializable()
class _$EveryClause extends EveryClause {
  const _$EveryClause(
      {required this.time,
      required this.howManyEveryStage,
      this.lastStageUsed = 0,
      this.stageDone = 0,
      final String? $type})
      : $type = $type ?? 'every',
        super._();

  factory _$EveryClause.fromJson(Map<String, dynamic> json) =>
      _$$EveryClauseFromJson(json);

  @override
  final int time;
  @override
  final int howManyEveryStage;
  @override
  @JsonKey()
  final int lastStageUsed;
  @override
  @JsonKey()
  final int stageDone;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.every(time: $time, howManyEveryStage: $howManyEveryStage, lastStageUsed: $lastStageUsed, stageDone: $stageDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EveryClause &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.howManyEveryStage, howManyEveryStage) &&
            const DeepCollectionEquality()
                .equals(other.lastStageUsed, lastStageUsed) &&
            const DeepCollectionEquality().equals(other.stageDone, stageDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(howManyEveryStage),
      const DeepCollectionEquality().hash(lastStageUsed),
      const DeepCollectionEquality().hash(stageDone));

  @JsonKey(ignore: true)
  @override
  _$$EveryClauseCopyWith<_$EveryClause> get copyWith =>
      __$$EveryClauseCopyWithImpl<_$EveryClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return every?.call(time, howManyEveryStage, lastStageUsed, stageDone);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return every?.call(this);
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
    return _$$EveryClauseToJson(this);
  }
}

abstract class EveryClause extends Clause {
  const factory EveryClause(
      {required final int time,
      required final int howManyEveryStage,
      final int lastStageUsed,
      final int stageDone}) = _$EveryClause;
  const EveryClause._() : super._();

  factory EveryClause.fromJson(Map<String, dynamic> json) =
      _$EveryClause.fromJson;

  int get time => throw _privateConstructorUsedError;
  int get howManyEveryStage => throw _privateConstructorUsedError;
  int get lastStageUsed => throw _privateConstructorUsedError;
  int get stageDone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EveryClauseCopyWith<_$EveryClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimesClauseCopyWith<$Res> {
  factory _$$TimesClauseCopyWith(
          _$TimesClause value, $Res Function(_$TimesClause) then) =
      __$$TimesClauseCopyWithImpl<$Res>;
  $Res call({int time, int howManyEveryStage, int done});
}

/// @nodoc
class __$$TimesClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$TimesClauseCopyWith<$Res> {
  __$$TimesClauseCopyWithImpl(
      _$TimesClause _value, $Res Function(_$TimesClause) _then)
      : super(_value, (v) => _then(v as _$TimesClause));

  @override
  _$TimesClause get _value => super._value as _$TimesClause;

  @override
  $Res call({
    Object? time = freezed,
    Object? howManyEveryStage = freezed,
    Object? done = freezed,
  }) {
    return _then(_$TimesClause(
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

/// @nodoc
@JsonSerializable()
class _$TimesClause extends TimesClause {
  const _$TimesClause(
      {required this.time,
      required this.howManyEveryStage,
      this.done = 0,
      final String? $type})
      : $type = $type ?? 'times',
        super._();

  factory _$TimesClause.fromJson(Map<String, dynamic> json) =>
      _$$TimesClauseFromJson(json);

  @override
  final int time;
  @override
  final int howManyEveryStage;
  @override
  @JsonKey()
  final int done;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.times(time: $time, howManyEveryStage: $howManyEveryStage, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimesClause &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.howManyEveryStage, howManyEveryStage) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(howManyEveryStage),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$TimesClauseCopyWith<_$TimesClause> get copyWith =>
      __$$TimesClauseCopyWithImpl<_$TimesClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return times?.call(time, howManyEveryStage, done);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return times?.call(this);
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
    return _$$TimesClauseToJson(this);
  }
}

abstract class TimesClause extends Clause {
  const factory TimesClause(
      {required final int time,
      required final int howManyEveryStage,
      final int done}) = _$TimesClause;
  const TimesClause._() : super._();

  factory TimesClause.fromJson(Map<String, dynamic> json) =
      _$TimesClause.fromJson;

  int get time => throw _privateConstructorUsedError;
  int get howManyEveryStage => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TimesClauseCopyWith<_$TimesClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelfClauseCopyWith<$Res> {
  factory _$$SelfClauseCopyWith(
          _$SelfClause value, $Res Function(_$SelfClause) then) =
      __$$SelfClauseCopyWithImpl<$Res>;
  $Res call({int time, int done});
}

/// @nodoc
class __$$SelfClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$SelfClauseCopyWith<$Res> {
  __$$SelfClauseCopyWithImpl(
      _$SelfClause _value, $Res Function(_$SelfClause) _then)
      : super(_value, (v) => _then(v as _$SelfClause));

  @override
  _$SelfClause get _value => super._value as _$SelfClause;

  @override
  $Res call({
    Object? time = freezed,
    Object? done = freezed,
  }) {
    return _then(_$SelfClause(
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

/// @nodoc
@JsonSerializable()
class _$SelfClause extends SelfClause {
  const _$SelfClause({required this.time, this.done = 0, final String? $type})
      : $type = $type ?? 'self',
        super._();

  factory _$SelfClause.fromJson(Map<String, dynamic> json) =>
      _$$SelfClauseFromJson(json);

  @override
  final int time;
  @override
  @JsonKey()
  final int done;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.self(time: $time, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelfClause &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$SelfClauseCopyWith<_$SelfClause> get copyWith =>
      __$$SelfClauseCopyWithImpl<_$SelfClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return self?.call(time, done);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return self?.call(this);
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
    return _$$SelfClauseToJson(this);
  }
}

abstract class SelfClause extends Clause {
  const factory SelfClause({required final int time, final int done}) =
      _$SelfClause;
  const SelfClause._() : super._();

  factory SelfClause.fromJson(Map<String, dynamic> json) =
      _$SelfClause.fromJson;

  int get time => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SelfClauseCopyWith<_$SelfClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromActionClauseCopyWith<$Res> {
  factory _$$FromActionClauseCopyWith(
          _$FromActionClause value, $Res Function(_$FromActionClause) then) =
      __$$FromActionClauseCopyWithImpl<$Res>;
  $Res call({Action action});
}

/// @nodoc
class __$$FromActionClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$FromActionClauseCopyWith<$Res> {
  __$$FromActionClauseCopyWithImpl(
      _$FromActionClause _value, $Res Function(_$FromActionClause) _then)
      : super(_value, (v) => _then(v as _$FromActionClause));

  @override
  _$FromActionClause get _value => super._value as _$FromActionClause;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$FromActionClause(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FromActionClause extends FromActionClause {
  const _$FromActionClause({required this.action, final String? $type})
      : $type = $type ?? 'fromAction',
        super._();

  factory _$FromActionClause.fromJson(Map<String, dynamic> json) =>
      _$$FromActionClauseFromJson(json);

  @override
  final Action action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.fromAction(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromActionClause &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$FromActionClauseCopyWith<_$FromActionClause> get copyWith =>
      __$$FromActionClauseCopyWithImpl<_$FromActionClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return fromAction?.call(action);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return fromAction?.call(this);
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
    return _$$FromActionClauseToJson(this);
  }
}

abstract class FromActionClause extends Clause {
  const factory FromActionClause({required final Action action}) =
      _$FromActionClause;
  const FromActionClause._() : super._();

  factory FromActionClause.fromJson(Map<String, dynamic> json) =
      _$FromActionClause.fromJson;

  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromActionClauseCopyWith<_$FromActionClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WhenClauseCopyWith<$Res> {
  factory _$$WhenClauseCopyWith(
          _$WhenClause value, $Res Function(_$WhenClause) then) =
      __$$WhenClauseCopyWithImpl<$Res>;
  $Res call({Action action});
}

/// @nodoc
class __$$WhenClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$WhenClauseCopyWith<$Res> {
  __$$WhenClauseCopyWithImpl(
      _$WhenClause _value, $Res Function(_$WhenClause) _then)
      : super(_value, (v) => _then(v as _$WhenClause));

  @override
  _$WhenClause get _value => super._value as _$WhenClause;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$WhenClause(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhenClause extends WhenClause {
  const _$WhenClause({required this.action, final String? $type})
      : $type = $type ?? 'when',
        super._();

  factory _$WhenClause.fromJson(Map<String, dynamic> json) =>
      _$$WhenClauseFromJson(json);

  @override
  final Action action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.when(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhenClause &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$WhenClauseCopyWith<_$WhenClause> get copyWith =>
      __$$WhenClauseCopyWithImpl<_$WhenClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return when?.call(action);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return when?.call(this);
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
    return _$$WhenClauseToJson(this);
  }
}

abstract class WhenClause extends Clause {
  const factory WhenClause({required final Action action}) = _$WhenClause;
  const WhenClause._() : super._();

  factory WhenClause.fromJson(Map<String, dynamic> json) =
      _$WhenClause.fromJson;

  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$WhenClauseCopyWith<_$WhenClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UntilClauseCopyWith<$Res> {
  factory _$$UntilClauseCopyWith(
          _$UntilClause value, $Res Function(_$UntilClause) then) =
      __$$UntilClauseCopyWithImpl<$Res>;
  $Res call({Action action});
}

/// @nodoc
class __$$UntilClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$UntilClauseCopyWith<$Res> {
  __$$UntilClauseCopyWithImpl(
      _$UntilClause _value, $Res Function(_$UntilClause) _then)
      : super(_value, (v) => _then(v as _$UntilClause));

  @override
  _$UntilClause get _value => super._value as _$UntilClause;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$UntilClause(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UntilClause extends UntilClause {
  const _$UntilClause({required this.action, final String? $type})
      : $type = $type ?? 'until',
        super._();

  factory _$UntilClause.fromJson(Map<String, dynamic> json) =>
      _$$UntilClauseFromJson(json);

  @override
  final Action action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.until(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UntilClause &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$UntilClauseCopyWith<_$UntilClause> get copyWith =>
      __$$UntilClauseCopyWithImpl<_$UntilClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return until?.call(action);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return until?.call(this);
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
    return _$$UntilClauseToJson(this);
  }
}

abstract class UntilClause extends Clause {
  const factory UntilClause({required final Action action}) = _$UntilClause;
  const UntilClause._() : super._();

  factory UntilClause.fromJson(Map<String, dynamic> json) =
      _$UntilClause.fromJson;

  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UntilClauseCopyWith<_$UntilClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromClauseCopyWith<$Res> {
  factory _$$FromClauseCopyWith(
          _$FromClause value, $Res Function(_$FromClause) then) =
      __$$FromClauseCopyWithImpl<$Res>;
  $Res call({RoleEnum from, RoleEnum to});
}

/// @nodoc
class __$$FromClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$FromClauseCopyWith<$Res> {
  __$$FromClauseCopyWithImpl(
      _$FromClause _value, $Res Function(_$FromClause) _then)
      : super(_value, (v) => _then(v as _$FromClause));

  @override
  _$FromClause get _value => super._value as _$FromClause;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$FromClause(
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

/// @nodoc
@JsonSerializable()
class _$FromClause extends FromClause {
  const _$FromClause(
      {required this.from, required this.to, final String? $type})
      : $type = $type ?? 'from',
        super._();

  factory _$FromClause.fromJson(Map<String, dynamic> json) =>
      _$$FromClauseFromJson(json);

  @override
  final RoleEnum from;
  @override
  final RoleEnum to;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.from(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromClause &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$$FromClauseCopyWith<_$FromClause> get copyWith =>
      __$$FromClauseCopyWithImpl<_$FromClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return from?.call(this.from, to);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return from?.call(this);
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
    return _$$FromClauseToJson(this);
  }
}

abstract class FromClause extends Clause {
  const factory FromClause(
      {required final RoleEnum from,
      required final RoleEnum to}) = _$FromClause;
  const FromClause._() : super._();

  factory FromClause.fromJson(Map<String, dynamic> json) =
      _$FromClause.fromJson;

  RoleEnum get from => throw _privateConstructorUsedError;
  RoleEnum get to => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FromClauseCopyWith<_$FromClause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IFClauseCopyWith<$Res> {
  factory _$$IFClauseCopyWith(
          _$IFClause value, $Res Function(_$IFClause) then) =
      __$$IFClauseCopyWithImpl<$Res>;
  $Res call({List<RoleEnum>? target, AbilityType? targetFor, Action action});
}

/// @nodoc
class __$$IFClauseCopyWithImpl<$Res> extends _$ClauseCopyWithImpl<$Res>
    implements _$$IFClauseCopyWith<$Res> {
  __$$IFClauseCopyWithImpl(_$IFClause _value, $Res Function(_$IFClause) _then)
      : super(_value, (v) => _then(v as _$IFClause));

  @override
  _$IFClause get _value => super._value as _$IFClause;

  @override
  $Res call({
    Object? target = freezed,
    Object? targetFor = freezed,
    Object? action = freezed,
  }) {
    return _then(_$IFClause(
      target: target == freezed
          ? _value._target
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

/// @nodoc
@JsonSerializable()
class _$IFClause extends IFClause {
  const _$IFClause(
      {final List<RoleEnum>? target,
      this.targetFor,
      required this.action,
      final String? $type})
      : _target = target,
        $type = $type ?? 'iF',
        super._();

  factory _$IFClause.fromJson(Map<String, dynamic> json) =>
      _$$IFClauseFromJson(json);

  final List<RoleEnum>? _target;
  @override
  List<RoleEnum>? get target {
    final value = _target;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AbilityType? targetFor;
  @override
  final Action action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Clause.iF(target: $target, targetFor: $targetFor, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IFClause &&
            const DeepCollectionEquality().equals(other._target, _target) &&
            const DeepCollectionEquality().equals(other.targetFor, targetFor) &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_target),
      const DeepCollectionEquality().hash(targetFor),
      const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$IFClauseCopyWith<_$IFClause> get copyWith =>
      __$$IFClauseCopyWithImpl<_$IFClause>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
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
  }) {
    return iF?.call(target, targetFor, action);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EveryClause value)? every,
    TResult Function(TimesClause value)? times,
    TResult Function(SelfClause value)? self,
    TResult Function(FromActionClause value)? fromAction,
    TResult Function(WhenClause value)? when,
    TResult Function(UntilClause value)? until,
    TResult Function(FromClause value)? from,
    TResult Function(IFClause value)? iF,
  }) {
    return iF?.call(this);
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
    return _$$IFClauseToJson(this);
  }
}

abstract class IFClause extends Clause {
  const factory IFClause(
      {final List<RoleEnum>? target,
      final AbilityType? targetFor,
      required final Action action}) = _$IFClause;
  const IFClause._() : super._();

  factory IFClause.fromJson(Map<String, dynamic> json) = _$IFClause.fromJson;

  List<RoleEnum>? get target => throw _privateConstructorUsedError;
  AbilityType? get targetFor => throw _privateConstructorUsedError;
  Action get action => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IFClauseCopyWith<_$IFClause> get copyWith =>
      throw _privateConstructorUsedError;
}
