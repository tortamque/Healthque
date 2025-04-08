// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_treatment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseTreatmentState {
  CourseTreatments get courses;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of CourseTreatmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseTreatmentStateCopyWith<CourseTreatmentState> get copyWith =>
      _$CourseTreatmentStateCopyWithImpl<CourseTreatmentState>(
          this as CourseTreatmentState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseTreatmentState &&
            (identical(other.courses, courses) || other.courses == courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, courses, isLoading, errorMessage);

  @override
  String toString() {
    return 'CourseTreatmentState(courses: $courses, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $CourseTreatmentStateCopyWith<$Res> {
  factory $CourseTreatmentStateCopyWith(CourseTreatmentState value,
          $Res Function(CourseTreatmentState) _then) =
      _$CourseTreatmentStateCopyWithImpl;
  @useResult
  $Res call({CourseTreatments courses, bool isLoading, String? errorMessage});

  $CourseTreatmentsCopyWith<$Res> get courses;
}

/// @nodoc
class _$CourseTreatmentStateCopyWithImpl<$Res>
    implements $CourseTreatmentStateCopyWith<$Res> {
  _$CourseTreatmentStateCopyWithImpl(this._self, this._then);

  final CourseTreatmentState _self;
  final $Res Function(CourseTreatmentState) _then;

  /// Create a copy of CourseTreatmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      courses: null == courses
          ? _self.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as CourseTreatments,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CourseTreatmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTreatmentsCopyWith<$Res> get courses {
    return $CourseTreatmentsCopyWith<$Res>(_self.courses, (value) {
      return _then(_self.copyWith(courses: value));
    });
  }
}

/// @nodoc

class _CourseTreatmentState implements CourseTreatmentState {
  const _CourseTreatmentState(
      {this.courses = const CourseTreatments(courses: []),
      this.isLoading = false,
      this.errorMessage});

  @override
  @JsonKey()
  final CourseTreatments courses;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  /// Create a copy of CourseTreatmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseTreatmentStateCopyWith<_CourseTreatmentState> get copyWith =>
      __$CourseTreatmentStateCopyWithImpl<_CourseTreatmentState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseTreatmentState &&
            (identical(other.courses, courses) || other.courses == courses) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, courses, isLoading, errorMessage);

  @override
  String toString() {
    return 'CourseTreatmentState(courses: $courses, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$CourseTreatmentStateCopyWith<$Res>
    implements $CourseTreatmentStateCopyWith<$Res> {
  factory _$CourseTreatmentStateCopyWith(_CourseTreatmentState value,
          $Res Function(_CourseTreatmentState) _then) =
      __$CourseTreatmentStateCopyWithImpl;
  @override
  @useResult
  $Res call({CourseTreatments courses, bool isLoading, String? errorMessage});

  @override
  $CourseTreatmentsCopyWith<$Res> get courses;
}

/// @nodoc
class __$CourseTreatmentStateCopyWithImpl<$Res>
    implements _$CourseTreatmentStateCopyWith<$Res> {
  __$CourseTreatmentStateCopyWithImpl(this._self, this._then);

  final _CourseTreatmentState _self;
  final $Res Function(_CourseTreatmentState) _then;

  /// Create a copy of CourseTreatmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? courses = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_CourseTreatmentState(
      courses: null == courses
          ? _self.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as CourseTreatments,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CourseTreatmentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTreatmentsCopyWith<$Res> get courses {
    return $CourseTreatmentsCopyWith<$Res>(_self.courses, (value) {
      return _then(_self.copyWith(courses: value));
    });
  }
}

// dart format on
