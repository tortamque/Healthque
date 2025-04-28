// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Medication {
  @HiveField(0)
  int get id;
  @HiveField(1)
  MedicationType get type;
  @HiveField(2)
  String get dosage;
  @HiveField(3)
  String get course;
  @HiveField(4)
  DateTime get createdAt;
  @HiveField(5)
  String? get notes;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MedicationCopyWith<Medication> get copyWith =>
      _$MedicationCopyWithImpl<Medication>(this as Medication, _$identity);

  /// Serializes this Medication to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Medication &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, dosage, course, createdAt, notes);

  @override
  String toString() {
    return 'Medication(id: $id, type: $type, dosage: $dosage, course: $course, createdAt: $createdAt, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $MedicationCopyWith<$Res> {
  factory $MedicationCopyWith(
          Medication value, $Res Function(Medication) _then) =
      _$MedicationCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) MedicationType type,
      @HiveField(2) String dosage,
      @HiveField(3) String course,
      @HiveField(4) DateTime createdAt,
      @HiveField(5) String? notes});
}

/// @nodoc
class _$MedicationCopyWithImpl<$Res> implements $MedicationCopyWith<$Res> {
  _$MedicationCopyWithImpl(this._self, this._then);

  final Medication _self;
  final $Res Function(Medication) _then;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? dosage = null,
    Object? course = null,
    Object? createdAt = null,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MedicationType,
      dosage: null == dosage
          ? _self.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      course: null == course
          ? _self.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Medication implements Medication {
  const _Medication(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.type,
      @HiveField(2) required this.dosage,
      @HiveField(3) required this.course,
      @HiveField(4) required this.createdAt,
      @HiveField(5) this.notes});
  factory _Medication.fromJson(Map<String, dynamic> json) =>
      _$MedicationFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final MedicationType type;
  @override
  @HiveField(2)
  final String dosage;
  @override
  @HiveField(3)
  final String course;
  @override
  @HiveField(4)
  final DateTime createdAt;
  @override
  @HiveField(5)
  final String? notes;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MedicationCopyWith<_Medication> get copyWith =>
      __$MedicationCopyWithImpl<_Medication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MedicationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Medication &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dosage, dosage) || other.dosage == dosage) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, dosage, course, createdAt, notes);

  @override
  String toString() {
    return 'Medication(id: $id, type: $type, dosage: $dosage, course: $course, createdAt: $createdAt, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$MedicationCopyWith<$Res>
    implements $MedicationCopyWith<$Res> {
  factory _$MedicationCopyWith(
          _Medication value, $Res Function(_Medication) _then) =
      __$MedicationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) MedicationType type,
      @HiveField(2) String dosage,
      @HiveField(3) String course,
      @HiveField(4) DateTime createdAt,
      @HiveField(5) String? notes});
}

/// @nodoc
class __$MedicationCopyWithImpl<$Res> implements _$MedicationCopyWith<$Res> {
  __$MedicationCopyWithImpl(this._self, this._then);

  final _Medication _self;
  final $Res Function(_Medication) _then;

  /// Create a copy of Medication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? dosage = null,
    Object? course = null,
    Object? createdAt = null,
    Object? notes = freezed,
  }) {
    return _then(_Medication(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as MedicationType,
      dosage: null == dosage
          ? _self.dosage
          : dosage // ignore: cast_nullable_to_non_nullable
              as String,
      course: null == course
          ? _self.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
