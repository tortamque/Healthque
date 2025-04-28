// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Medications {
  @HiveField(0)
  List<Medication> get medications;

  /// Create a copy of Medications
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MedicationsCopyWith<Medications> get copyWith =>
      _$MedicationsCopyWithImpl<Medications>(this as Medications, _$identity);

  /// Serializes this Medications to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Medications &&
            const DeepCollectionEquality()
                .equals(other.medications, medications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(medications));

  @override
  String toString() {
    return 'Medications(medications: $medications)';
  }
}

/// @nodoc
abstract mixin class $MedicationsCopyWith<$Res> {
  factory $MedicationsCopyWith(
          Medications value, $Res Function(Medications) _then) =
      _$MedicationsCopyWithImpl;
  @useResult
  $Res call({@HiveField(0) List<Medication> medications});
}

/// @nodoc
class _$MedicationsCopyWithImpl<$Res> implements $MedicationsCopyWith<$Res> {
  _$MedicationsCopyWithImpl(this._self, this._then);

  final Medications _self;
  final $Res Function(Medications) _then;

  /// Create a copy of Medications
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medications = null,
  }) {
    return _then(_self.copyWith(
      medications: null == medications
          ? _self.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<Medication>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Medications implements Medications {
  const _Medications(
      {@HiveField(0) required final List<Medication> medications})
      : _medications = medications;
  factory _Medications.fromJson(Map<String, dynamic> json) =>
      _$MedicationsFromJson(json);

  final List<Medication> _medications;
  @override
  @HiveField(0)
  List<Medication> get medications {
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medications);
  }

  /// Create a copy of Medications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MedicationsCopyWith<_Medications> get copyWith =>
      __$MedicationsCopyWithImpl<_Medications>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MedicationsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Medications &&
            const DeepCollectionEquality()
                .equals(other._medications, _medications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_medications));

  @override
  String toString() {
    return 'Medications(medications: $medications)';
  }
}

/// @nodoc
abstract mixin class _$MedicationsCopyWith<$Res>
    implements $MedicationsCopyWith<$Res> {
  factory _$MedicationsCopyWith(
          _Medications value, $Res Function(_Medications) _then) =
      __$MedicationsCopyWithImpl;
  @override
  @useResult
  $Res call({@HiveField(0) List<Medication> medications});
}

/// @nodoc
class __$MedicationsCopyWithImpl<$Res> implements _$MedicationsCopyWith<$Res> {
  __$MedicationsCopyWithImpl(this._self, this._then);

  final _Medications _self;
  final $Res Function(_Medications) _then;

  /// Create a copy of Medications
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? medications = null,
  }) {
    return _then(_Medications(
      medications: null == medications
          ? _self._medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<Medication>,
    ));
  }
}

// dart format on
