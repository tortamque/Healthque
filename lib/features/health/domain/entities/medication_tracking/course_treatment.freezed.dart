// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_treatment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseTreatment {
  @HiveField(0)
  int get id;
  @HiveField(1)
  List<CourseTreatmentEntry> get entries;
  @HiveField(2)
  DateTime get courseStart;
  @HiveField(3)
  DateTime get courseEnd;
  @HiveField(4)
  DateTime get medicationTime;
  @HiveField(5)
  DateTimeComponents get repeatInterval;

  /// Create a copy of CourseTreatment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseTreatmentCopyWith<CourseTreatment> get copyWith =>
      _$CourseTreatmentCopyWithImpl<CourseTreatment>(
          this as CourseTreatment, _$identity);

  /// Serializes this CourseTreatment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseTreatment &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.entries, entries) &&
            (identical(other.courseStart, courseStart) ||
                other.courseStart == courseStart) &&
            (identical(other.courseEnd, courseEnd) ||
                other.courseEnd == courseEnd) &&
            (identical(other.medicationTime, medicationTime) ||
                other.medicationTime == medicationTime) &&
            (identical(other.repeatInterval, repeatInterval) ||
                other.repeatInterval == repeatInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(entries),
      courseStart,
      courseEnd,
      medicationTime,
      repeatInterval);

  @override
  String toString() {
    return 'CourseTreatment(id: $id, entries: $entries, courseStart: $courseStart, courseEnd: $courseEnd, medicationTime: $medicationTime, repeatInterval: $repeatInterval)';
  }
}

/// @nodoc
abstract mixin class $CourseTreatmentCopyWith<$Res> {
  factory $CourseTreatmentCopyWith(
          CourseTreatment value, $Res Function(CourseTreatment) _then) =
      _$CourseTreatmentCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<CourseTreatmentEntry> entries,
      @HiveField(2) DateTime courseStart,
      @HiveField(3) DateTime courseEnd,
      @HiveField(4) DateTime medicationTime,
      @HiveField(5) DateTimeComponents repeatInterval});
}

/// @nodoc
class _$CourseTreatmentCopyWithImpl<$Res>
    implements $CourseTreatmentCopyWith<$Res> {
  _$CourseTreatmentCopyWithImpl(this._self, this._then);

  final CourseTreatment _self;
  final $Res Function(CourseTreatment) _then;

  /// Create a copy of CourseTreatment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entries = null,
    Object? courseStart = null,
    Object? courseEnd = null,
    Object? medicationTime = null,
    Object? repeatInterval = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      entries: null == entries
          ? _self.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<CourseTreatmentEntry>,
      courseStart: null == courseStart
          ? _self.courseStart
          : courseStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseEnd: null == courseEnd
          ? _self.courseEnd
          : courseEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      medicationTime: null == medicationTime
          ? _self.medicationTime
          : medicationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repeatInterval: null == repeatInterval
          ? _self.repeatInterval
          : repeatInterval // ignore: cast_nullable_to_non_nullable
              as DateTimeComponents,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CourseTreatment implements CourseTreatment {
  const _CourseTreatment(
      {@HiveField(0) required this.id,
      @HiveField(1) required final List<CourseTreatmentEntry> entries,
      @HiveField(2) required this.courseStart,
      @HiveField(3) required this.courseEnd,
      @HiveField(4) required this.medicationTime,
      @HiveField(5) required this.repeatInterval})
      : _entries = entries;
  factory _CourseTreatment.fromJson(Map<String, dynamic> json) =>
      _$CourseTreatmentFromJson(json);

  @override
  @HiveField(0)
  final int id;
  final List<CourseTreatmentEntry> _entries;
  @override
  @HiveField(1)
  List<CourseTreatmentEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  @HiveField(2)
  final DateTime courseStart;
  @override
  @HiveField(3)
  final DateTime courseEnd;
  @override
  @HiveField(4)
  final DateTime medicationTime;
  @override
  @HiveField(5)
  final DateTimeComponents repeatInterval;

  /// Create a copy of CourseTreatment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseTreatmentCopyWith<_CourseTreatment> get copyWith =>
      __$CourseTreatmentCopyWithImpl<_CourseTreatment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseTreatmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseTreatment &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            (identical(other.courseStart, courseStart) ||
                other.courseStart == courseStart) &&
            (identical(other.courseEnd, courseEnd) ||
                other.courseEnd == courseEnd) &&
            (identical(other.medicationTime, medicationTime) ||
                other.medicationTime == medicationTime) &&
            (identical(other.repeatInterval, repeatInterval) ||
                other.repeatInterval == repeatInterval));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_entries),
      courseStart,
      courseEnd,
      medicationTime,
      repeatInterval);

  @override
  String toString() {
    return 'CourseTreatment(id: $id, entries: $entries, courseStart: $courseStart, courseEnd: $courseEnd, medicationTime: $medicationTime, repeatInterval: $repeatInterval)';
  }
}

/// @nodoc
abstract mixin class _$CourseTreatmentCopyWith<$Res>
    implements $CourseTreatmentCopyWith<$Res> {
  factory _$CourseTreatmentCopyWith(
          _CourseTreatment value, $Res Function(_CourseTreatment) _then) =
      __$CourseTreatmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) List<CourseTreatmentEntry> entries,
      @HiveField(2) DateTime courseStart,
      @HiveField(3) DateTime courseEnd,
      @HiveField(4) DateTime medicationTime,
      @HiveField(5) DateTimeComponents repeatInterval});
}

/// @nodoc
class __$CourseTreatmentCopyWithImpl<$Res>
    implements _$CourseTreatmentCopyWith<$Res> {
  __$CourseTreatmentCopyWithImpl(this._self, this._then);

  final _CourseTreatment _self;
  final $Res Function(_CourseTreatment) _then;

  /// Create a copy of CourseTreatment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? entries = null,
    Object? courseStart = null,
    Object? courseEnd = null,
    Object? medicationTime = null,
    Object? repeatInterval = null,
  }) {
    return _then(_CourseTreatment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      entries: null == entries
          ? _self._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<CourseTreatmentEntry>,
      courseStart: null == courseStart
          ? _self.courseStart
          : courseStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseEnd: null == courseEnd
          ? _self.courseEnd
          : courseEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      medicationTime: null == medicationTime
          ? _self.medicationTime
          : medicationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      repeatInterval: null == repeatInterval
          ? _self.repeatInterval
          : repeatInterval // ignore: cast_nullable_to_non_nullable
              as DateTimeComponents,
    ));
  }
}

/// @nodoc
mixin _$CourseTreatmentEntry {
  @HiveField(0)
  String get name;
  @HiveField(1)
  MedicationType get medicationType;
  @HiveField(2)
  String get dosage;
  @HiveField(3)
  String? get notes;

  /// Create a copy of CourseTreatmentEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseTreatmentEntryCopyWith<CourseTreatmentEntry> get copyWith =>
      _$CourseTreatmentEntryCopyWithImpl<CourseTreatmentEntry>(
          this as CourseTreatmentEntry, _$identity);

  /// Serializes this CourseTreatmentEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseTreatmentEntry &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.medicationType, medicationType) ||
                other.medicationType == medicationType) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, medicationType, dosage, notes);

  @override
  String toString() {
    return 'CourseTreatmentEntry(name: $name, medicationType: $medicationType, dosage: $dosage, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $CourseTreatmentEntryCopyWith<$Res> {
  factory $CourseTreatmentEntryCopyWith(CourseTreatmentEntry value,
          $Res Function(CourseTreatmentEntry) _then) =
      _$CourseTreatmentEntryCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) MedicationType medicationType,
      @HiveField(2) String dosage,
      @HiveField(3) String? notes});
}

/// @nodoc
class _$CourseTreatmentEntryCopyWithImpl<$Res>
    implements $CourseTreatmentEntryCopyWith<$Res> {
  _$CourseTreatmentEntryCopyWithImpl(this._self, this._then);

  final CourseTreatmentEntry _self;
  final $Res Function(CourseTreatmentEntry) _then;

  /// Create a copy of CourseTreatmentEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? medicationType = null,
    Object? dosage = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      medicationType: null == medicationType
          ? _self.medicationType
          : medicationType // ignore: cast_nullable_to_non_nullable
              as MedicationType,
      dosage: null == dosage
          ? _self.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CourseTreatmentEntry implements CourseTreatmentEntry {
  const _CourseTreatmentEntry(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.medicationType,
      @HiveField(2) required this.dosage,
      @HiveField(3) this.notes});
  factory _CourseTreatmentEntry.fromJson(Map<String, dynamic> json) =>
      _$CourseTreatmentEntryFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final MedicationType medicationType;
  @override
  @HiveField(2)
  final String dosage;
  @override
  @HiveField(3)
  final String? notes;

  /// Create a copy of CourseTreatmentEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseTreatmentEntryCopyWith<_CourseTreatmentEntry> get copyWith =>
      __$CourseTreatmentEntryCopyWithImpl<_CourseTreatmentEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseTreatmentEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseTreatmentEntry &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.medicationType, medicationType) ||
                other.medicationType == medicationType) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, medicationType, dosage, notes);

  @override
  String toString() {
    return 'CourseTreatmentEntry(name: $name, medicationType: $medicationType, dosage: $dosage, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$CourseTreatmentEntryCopyWith<$Res>
    implements $CourseTreatmentEntryCopyWith<$Res> {
  factory _$CourseTreatmentEntryCopyWith(_CourseTreatmentEntry value,
          $Res Function(_CourseTreatmentEntry) _then) =
      __$CourseTreatmentEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) MedicationType medicationType,
      @HiveField(2) String dosage,
      @HiveField(3) String? notes});
}

/// @nodoc
class __$CourseTreatmentEntryCopyWithImpl<$Res>
    implements _$CourseTreatmentEntryCopyWith<$Res> {
  __$CourseTreatmentEntryCopyWithImpl(this._self, this._then);

  final _CourseTreatmentEntry _self;
  final $Res Function(_CourseTreatmentEntry) _then;

  /// Create a copy of CourseTreatmentEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? medicationType = null,
    Object? dosage = null,
    Object? notes = freezed,
  }) {
    return _then(_CourseTreatmentEntry(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      medicationType: null == medicationType
          ? _self.medicationType
          : medicationType // ignore: cast_nullable_to_non_nullable
              as MedicationType,
      dosage: null == dosage
          ? _self.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CourseTreatments {
  @HiveField(0)
  List<CourseTreatment> get courses;

  /// Create a copy of CourseTreatments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CourseTreatmentsCopyWith<CourseTreatments> get copyWith =>
      _$CourseTreatmentsCopyWithImpl<CourseTreatments>(
          this as CourseTreatments, _$identity);

  /// Serializes this CourseTreatments to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CourseTreatments &&
            const DeepCollectionEquality().equals(other.courses, courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(courses));

  @override
  String toString() {
    return 'CourseTreatments(courses: $courses)';
  }
}

/// @nodoc
abstract mixin class $CourseTreatmentsCopyWith<$Res> {
  factory $CourseTreatmentsCopyWith(
          CourseTreatments value, $Res Function(CourseTreatments) _then) =
      _$CourseTreatmentsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<CourseTreatment> courses});
}

/// @nodoc
class _$CourseTreatmentsCopyWithImpl<$Res>
    implements $CourseTreatmentsCopyWith<$Res> {
  _$CourseTreatmentsCopyWithImpl(this._self, this._then);

  final CourseTreatments _self;
  final $Res Function(CourseTreatments) _then;

  /// Create a copy of CourseTreatments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courses = null,
  }) {
    return _then(_self.copyWith(
      courses: null == courses
          ? _self.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseTreatment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CourseTreatments implements CourseTreatments {
  const _CourseTreatments(
      {@HiveField(0) required final List<CourseTreatment> courses})
      : _courses = courses;
  factory _CourseTreatments.fromJson(Map<String, dynamic> json) =>
      _$CourseTreatmentsFromJson(json);

  final List<CourseTreatment> _courses;
  @override
  @HiveField(0)
  List<CourseTreatment> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  /// Create a copy of CourseTreatments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CourseTreatmentsCopyWith<_CourseTreatments> get copyWith =>
      __$CourseTreatmentsCopyWithImpl<_CourseTreatments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CourseTreatmentsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseTreatments &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_courses));

  @override
  String toString() {
    return 'CourseTreatments(courses: $courses)';
  }
}

/// @nodoc
abstract mixin class _$CourseTreatmentsCopyWith<$Res>
    implements $CourseTreatmentsCopyWith<$Res> {
  factory _$CourseTreatmentsCopyWith(
          _CourseTreatments value, $Res Function(_CourseTreatments) _then) =
      __$CourseTreatmentsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<CourseTreatment> courses});
}

/// @nodoc
class __$CourseTreatmentsCopyWithImpl<$Res>
    implements _$CourseTreatmentsCopyWith<$Res> {
  __$CourseTreatmentsCopyWithImpl(this._self, this._then);

  final _CourseTreatments _self;
  final $Res Function(_CourseTreatments) _then;

  /// Create a copy of CourseTreatments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? courses = null,
  }) {
    return _then(_CourseTreatments(
      courses: null == courses
          ? _self._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseTreatment>,
    ));
  }
}

// dart format on
