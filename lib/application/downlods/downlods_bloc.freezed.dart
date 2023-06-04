// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downlods_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownlodsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDownloadsImages value) getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDownloadsImages value)? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDownloadsImages value)? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownlodsEventCopyWith<$Res> {
  factory $DownlodsEventCopyWith(
          DownlodsEvent value, $Res Function(DownlodsEvent) then) =
      _$DownlodsEventCopyWithImpl<$Res, DownlodsEvent>;
}

/// @nodoc
class _$DownlodsEventCopyWithImpl<$Res, $Val extends DownlodsEvent>
    implements $DownlodsEventCopyWith<$Res> {
  _$DownlodsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getDownloadsImagesCopyWith<$Res> {
  factory _$$_getDownloadsImagesCopyWith(_$_getDownloadsImages value,
          $Res Function(_$_getDownloadsImages) then) =
      __$$_getDownloadsImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getDownloadsImagesCopyWithImpl<$Res>
    extends _$DownlodsEventCopyWithImpl<$Res, _$_getDownloadsImages>
    implements _$$_getDownloadsImagesCopyWith<$Res> {
  __$$_getDownloadsImagesCopyWithImpl(
      _$_getDownloadsImages _value, $Res Function(_$_getDownloadsImages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getDownloadsImages implements _getDownloadsImages {
  const _$_getDownloadsImages();

  @override
  String toString() {
    return 'DownlodsEvent.getDownloadsImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getDownloadsImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) {
    return getDownloadsImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImages,
  }) {
    return getDownloadsImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getDownloadsImages value) getDownloadsImages,
  }) {
    return getDownloadsImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getDownloadsImages value)? getDownloadsImages,
  }) {
    return getDownloadsImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getDownloadsImages value)? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages(this);
    }
    return orElse();
  }
}

abstract class _getDownloadsImages implements DownlodsEvent {
  const factory _getDownloadsImages() = _$_getDownloadsImages;
}

/// @nodoc
mixin _$DownlodsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downlods => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownlodsStateCopyWith<DownlodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownlodsStateCopyWith<$Res> {
  factory $DownlodsStateCopyWith(
          DownlodsState value, $Res Function(DownlodsState) then) =
      _$DownlodsStateCopyWithImpl<$Res, DownlodsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downlods,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class _$DownlodsStateCopyWithImpl<$Res, $Val extends DownlodsState>
    implements $DownlodsStateCopyWith<$Res> {
  _$DownlodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downlods = null,
    Object? downloadsFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlods: null == downlods
          ? _value.downlods
          : downlods // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownlodsStateCopyWith<$Res>
    implements $DownlodsStateCopyWith<$Res> {
  factory _$$_DownlodsStateCopyWith(
          _$_DownlodsState value, $Res Function(_$_DownlodsState) then) =
      __$$_DownlodsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downlods,
      Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption});
}

/// @nodoc
class __$$_DownlodsStateCopyWithImpl<$Res>
    extends _$DownlodsStateCopyWithImpl<$Res, _$_DownlodsState>
    implements _$$_DownlodsStateCopyWith<$Res> {
  __$$_DownlodsStateCopyWithImpl(
      _$_DownlodsState _value, $Res Function(_$_DownlodsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downlods = null,
    Object? downloadsFailureOrSuccessOption = null,
  }) {
    return _then(_$_DownlodsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlods: null == downlods
          ? _value._downlods
          : downlods // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsFailureOrSuccessOption: null == downloadsFailureOrSuccessOption
          ? _value.downloadsFailureOrSuccessOption
          : downloadsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownlodsState implements _DownlodsState {
  const _$_DownlodsState(
      {required this.isLoading,
      required final List<Downloads> downlods,
      required this.downloadsFailureOrSuccessOption})
      : _downlods = downlods;

  @override
  final bool isLoading;
  final List<Downloads> _downlods;
  @override
  List<Downloads> get downlods {
    if (_downlods is EqualUnmodifiableListView) return _downlods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downlods);
  }

  @override
  final Option<Either<MainFailure, List<Downloads>>>
      downloadsFailureOrSuccessOption;

  @override
  String toString() {
    return 'DownlodsState(isLoading: $isLoading, downlods: $downlods, downloadsFailureOrSuccessOption: $downloadsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownlodsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._downlods, _downlods) &&
            (identical(other.downloadsFailureOrSuccessOption,
                    downloadsFailureOrSuccessOption) ||
                other.downloadsFailureOrSuccessOption ==
                    downloadsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downlods),
      downloadsFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownlodsStateCopyWith<_$_DownlodsState> get copyWith =>
      __$$_DownlodsStateCopyWithImpl<_$_DownlodsState>(this, _$identity);
}

abstract class _DownlodsState implements DownlodsState {
  const factory _DownlodsState(
      {required final bool isLoading,
      required final List<Downloads> downlods,
      required final Option<Either<MainFailure, List<Downloads>>>
          downloadsFailureOrSuccessOption}) = _$_DownlodsState;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downlods;
  @override
  Option<Either<MainFailure, List<Downloads>>>
      get downloadsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DownlodsStateCopyWith<_$_DownlodsState> get copyWith =>
      throw _privateConstructorUsedError;
}
