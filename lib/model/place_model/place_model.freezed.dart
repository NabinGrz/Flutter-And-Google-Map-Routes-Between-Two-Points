// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressComponentDetail _$AddressComponentDetailFromJson(
    Map<String, dynamic> json) {
  return _AddressComponentDetail.fromJson(json);
}

/// @nodoc
mixin _$AddressComponentDetail {
  String? get long_name => throw _privateConstructorUsedError;
  String? get short_name => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressComponentDetailCopyWith<AddressComponentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressComponentDetailCopyWith<$Res> {
  factory $AddressComponentDetailCopyWith(AddressComponentDetail value,
          $Res Function(AddressComponentDetail) then) =
      _$AddressComponentDetailCopyWithImpl<$Res, AddressComponentDetail>;
  @useResult
  $Res call({String? long_name, String? short_name, List<String>? types});
}

/// @nodoc
class _$AddressComponentDetailCopyWithImpl<$Res,
        $Val extends AddressComponentDetail>
    implements $AddressComponentDetailCopyWith<$Res> {
  _$AddressComponentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long_name = freezed,
    Object? short_name = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      long_name: freezed == long_name
          ? _value.long_name
          : long_name // ignore: cast_nullable_to_non_nullable
              as String?,
      short_name: freezed == short_name
          ? _value.short_name
          : short_name // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressComponentDetailCopyWith<$Res>
    implements $AddressComponentDetailCopyWith<$Res> {
  factory _$$_AddressComponentDetailCopyWith(_$_AddressComponentDetail value,
          $Res Function(_$_AddressComponentDetail) then) =
      __$$_AddressComponentDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? long_name, String? short_name, List<String>? types});
}

/// @nodoc
class __$$_AddressComponentDetailCopyWithImpl<$Res>
    extends _$AddressComponentDetailCopyWithImpl<$Res,
        _$_AddressComponentDetail>
    implements _$$_AddressComponentDetailCopyWith<$Res> {
  __$$_AddressComponentDetailCopyWithImpl(_$_AddressComponentDetail _value,
      $Res Function(_$_AddressComponentDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long_name = freezed,
    Object? short_name = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_AddressComponentDetail(
      long_name: freezed == long_name
          ? _value.long_name
          : long_name // ignore: cast_nullable_to_non_nullable
              as String?,
      short_name: freezed == short_name
          ? _value.short_name
          : short_name // ignore: cast_nullable_to_non_nullable
              as String?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressComponentDetail implements _AddressComponentDetail {
  const _$_AddressComponentDetail(
      {this.long_name, this.short_name, final List<String>? types})
      : _types = types;

  factory _$_AddressComponentDetail.fromJson(Map<String, dynamic> json) =>
      _$$_AddressComponentDetailFromJson(json);

  @override
  final String? long_name;
  @override
  final String? short_name;
  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressComponentDetail(long_name: $long_name, short_name: $short_name, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressComponentDetail &&
            (identical(other.long_name, long_name) ||
                other.long_name == long_name) &&
            (identical(other.short_name, short_name) ||
                other.short_name == short_name) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, long_name, short_name,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressComponentDetailCopyWith<_$_AddressComponentDetail> get copyWith =>
      __$$_AddressComponentDetailCopyWithImpl<_$_AddressComponentDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressComponentDetailToJson(
      this,
    );
  }
}

abstract class _AddressComponentDetail implements AddressComponentDetail {
  const factory _AddressComponentDetail(
      {final String? long_name,
      final String? short_name,
      final List<String>? types}) = _$_AddressComponentDetail;

  factory _AddressComponentDetail.fromJson(Map<String, dynamic> json) =
      _$_AddressComponentDetail.fromJson;

  @override
  String? get long_name;
  @override
  String? get short_name;
  @override
  List<String>? get types;
  @override
  @JsonKey(ignore: true)
  _$$_AddressComponentDetailCopyWith<_$_AddressComponentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return _ResultsModel.fromJson(json);
}

/// @nodoc
mixin _$ResultsModel {
  List<AddressComponentDetail>? get address_components =>
      throw _privateConstructorUsedError;
  String? get formatted_address => throw _privateConstructorUsedError;
  GeometryModel? get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsModelCopyWith<ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsModelCopyWith<$Res> {
  factory $ResultsModelCopyWith(
          ResultsModel value, $Res Function(ResultsModel) then) =
      _$ResultsModelCopyWithImpl<$Res, ResultsModel>;
  @useResult
  $Res call(
      {List<AddressComponentDetail>? address_components,
      String? formatted_address,
      GeometryModel? geometry});

  $GeometryModelCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$ResultsModelCopyWithImpl<$Res, $Val extends ResultsModel>
    implements $ResultsModelCopyWith<$Res> {
  _$ResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_components = freezed,
    Object? formatted_address = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      address_components: freezed == address_components
          ? _value.address_components
          : address_components // ignore: cast_nullable_to_non_nullable
              as List<AddressComponentDetail>?,
      formatted_address: freezed == formatted_address
          ? _value.formatted_address
          : formatted_address // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryModelCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryModelCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultsModelCopyWith<$Res>
    implements $ResultsModelCopyWith<$Res> {
  factory _$$_ResultsModelCopyWith(
          _$_ResultsModel value, $Res Function(_$_ResultsModel) then) =
      __$$_ResultsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AddressComponentDetail>? address_components,
      String? formatted_address,
      GeometryModel? geometry});

  @override
  $GeometryModelCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_ResultsModelCopyWithImpl<$Res>
    extends _$ResultsModelCopyWithImpl<$Res, _$_ResultsModel>
    implements _$$_ResultsModelCopyWith<$Res> {
  __$$_ResultsModelCopyWithImpl(
      _$_ResultsModel _value, $Res Function(_$_ResultsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address_components = freezed,
    Object? formatted_address = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_ResultsModel(
      address_components: freezed == address_components
          ? _value._address_components
          : address_components // ignore: cast_nullable_to_non_nullable
              as List<AddressComponentDetail>?,
      formatted_address: freezed == formatted_address
          ? _value.formatted_address
          : formatted_address // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeometryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultsModel implements _ResultsModel {
  const _$_ResultsModel(
      {final List<AddressComponentDetail>? address_components,
      this.formatted_address,
      this.geometry})
      : _address_components = address_components;

  factory _$_ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsModelFromJson(json);

  final List<AddressComponentDetail>? _address_components;
  @override
  List<AddressComponentDetail>? get address_components {
    final value = _address_components;
    if (value == null) return null;
    if (_address_components is EqualUnmodifiableListView)
      return _address_components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? formatted_address;
  @override
  final GeometryModel? geometry;

  @override
  String toString() {
    return 'ResultsModel(address_components: $address_components, formatted_address: $formatted_address, geometry: $geometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsModel &&
            const DeepCollectionEquality()
                .equals(other._address_components, _address_components) &&
            (identical(other.formatted_address, formatted_address) ||
                other.formatted_address == formatted_address) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_address_components),
      formatted_address,
      geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsModelCopyWith<_$_ResultsModel> get copyWith =>
      __$$_ResultsModelCopyWithImpl<_$_ResultsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsModelToJson(
      this,
    );
  }
}

abstract class _ResultsModel implements ResultsModel {
  const factory _ResultsModel(
      {final List<AddressComponentDetail>? address_components,
      final String? formatted_address,
      final GeometryModel? geometry}) = _$_ResultsModel;

  factory _ResultsModel.fromJson(Map<String, dynamic> json) =
      _$_ResultsModel.fromJson;

  @override
  List<AddressComponentDetail>? get address_components;
  @override
  String? get formatted_address;
  @override
  GeometryModel? get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsModelCopyWith<_$_ResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GeometryModel _$GeometryModelFromJson(Map<String, dynamic> json) {
  return _GeometryModel.fromJson(json);
}

/// @nodoc
mixin _$GeometryModel {
  LatlngModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryModelCopyWith<GeometryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryModelCopyWith<$Res> {
  factory $GeometryModelCopyWith(
          GeometryModel value, $Res Function(GeometryModel) then) =
      _$GeometryModelCopyWithImpl<$Res, GeometryModel>;
  @useResult
  $Res call({LatlngModel? location});

  $LatlngModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$GeometryModelCopyWithImpl<$Res, $Val extends GeometryModel>
    implements $GeometryModelCopyWith<$Res> {
  _$GeometryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatlngModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatlngModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LatlngModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GeometryModelCopyWith<$Res>
    implements $GeometryModelCopyWith<$Res> {
  factory _$$_GeometryModelCopyWith(
          _$_GeometryModel value, $Res Function(_$_GeometryModel) then) =
      __$$_GeometryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatlngModel? location});

  @override
  $LatlngModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_GeometryModelCopyWithImpl<$Res>
    extends _$GeometryModelCopyWithImpl<$Res, _$_GeometryModel>
    implements _$$_GeometryModelCopyWith<$Res> {
  __$$_GeometryModelCopyWithImpl(
      _$_GeometryModel _value, $Res Function(_$_GeometryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_GeometryModel(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatlngModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeometryModel implements _GeometryModel {
  const _$_GeometryModel({this.location});

  factory _$_GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$$_GeometryModelFromJson(json);

  @override
  final LatlngModel? location;

  @override
  String toString() {
    return 'GeometryModel(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeometryModel &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeometryModelCopyWith<_$_GeometryModel> get copyWith =>
      __$$_GeometryModelCopyWithImpl<_$_GeometryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeometryModelToJson(
      this,
    );
  }
}

abstract class _GeometryModel implements GeometryModel {
  const factory _GeometryModel({final LatlngModel? location}) =
      _$_GeometryModel;

  factory _GeometryModel.fromJson(Map<String, dynamic> json) =
      _$_GeometryModel.fromJson;

  @override
  LatlngModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$_GeometryModelCopyWith<_$_GeometryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PlusCodeModel _$PlusCodeModelFromJson(Map<String, dynamic> json) {
  return _PlusCodeModel.fromJson(json);
}

/// @nodoc
mixin _$PlusCodeModel {
  String? get compound_code => throw _privateConstructorUsedError;
  String? get global_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlusCodeModelCopyWith<PlusCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlusCodeModelCopyWith<$Res> {
  factory $PlusCodeModelCopyWith(
          PlusCodeModel value, $Res Function(PlusCodeModel) then) =
      _$PlusCodeModelCopyWithImpl<$Res, PlusCodeModel>;
  @useResult
  $Res call({String? compound_code, String? global_code});
}

/// @nodoc
class _$PlusCodeModelCopyWithImpl<$Res, $Val extends PlusCodeModel>
    implements $PlusCodeModelCopyWith<$Res> {
  _$PlusCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compound_code = freezed,
    Object? global_code = freezed,
  }) {
    return _then(_value.copyWith(
      compound_code: freezed == compound_code
          ? _value.compound_code
          : compound_code // ignore: cast_nullable_to_non_nullable
              as String?,
      global_code: freezed == global_code
          ? _value.global_code
          : global_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlusCodeModelCopyWith<$Res>
    implements $PlusCodeModelCopyWith<$Res> {
  factory _$$_PlusCodeModelCopyWith(
          _$_PlusCodeModel value, $Res Function(_$_PlusCodeModel) then) =
      __$$_PlusCodeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? compound_code, String? global_code});
}

/// @nodoc
class __$$_PlusCodeModelCopyWithImpl<$Res>
    extends _$PlusCodeModelCopyWithImpl<$Res, _$_PlusCodeModel>
    implements _$$_PlusCodeModelCopyWith<$Res> {
  __$$_PlusCodeModelCopyWithImpl(
      _$_PlusCodeModel _value, $Res Function(_$_PlusCodeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compound_code = freezed,
    Object? global_code = freezed,
  }) {
    return _then(_$_PlusCodeModel(
      compound_code: freezed == compound_code
          ? _value.compound_code
          : compound_code // ignore: cast_nullable_to_non_nullable
              as String?,
      global_code: freezed == global_code
          ? _value.global_code
          : global_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlusCodeModel implements _PlusCodeModel {
  const _$_PlusCodeModel({this.compound_code, this.global_code});

  factory _$_PlusCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlusCodeModelFromJson(json);

  @override
  final String? compound_code;
  @override
  final String? global_code;

  @override
  String toString() {
    return 'PlusCodeModel(compound_code: $compound_code, global_code: $global_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlusCodeModel &&
            (identical(other.compound_code, compound_code) ||
                other.compound_code == compound_code) &&
            (identical(other.global_code, global_code) ||
                other.global_code == global_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, compound_code, global_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlusCodeModelCopyWith<_$_PlusCodeModel> get copyWith =>
      __$$_PlusCodeModelCopyWithImpl<_$_PlusCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlusCodeModelToJson(
      this,
    );
  }
}

abstract class _PlusCodeModel implements PlusCodeModel {
  const factory _PlusCodeModel(
      {final String? compound_code,
      final String? global_code}) = _$_PlusCodeModel;

  factory _PlusCodeModel.fromJson(Map<String, dynamic> json) =
      _$_PlusCodeModel.fromJson;

  @override
  String? get compound_code;
  @override
  String? get global_code;
  @override
  @JsonKey(ignore: true)
  _$$_PlusCodeModelCopyWith<_$_PlusCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceDetailModel _$PlaceDetailModelFromJson(Map<String, dynamic> json) {
  return _PlaceDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetailModel {
  PlusCodeModel? get plus_code => throw _privateConstructorUsedError;
  List<ResultsModel>? get results => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDetailModelCopyWith<PlaceDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailModelCopyWith<$Res> {
  factory $PlaceDetailModelCopyWith(
          PlaceDetailModel value, $Res Function(PlaceDetailModel) then) =
      _$PlaceDetailModelCopyWithImpl<$Res, PlaceDetailModel>;
  @useResult
  $Res call(
      {PlusCodeModel? plus_code, List<ResultsModel>? results, String? status});

  $PlusCodeModelCopyWith<$Res>? get plus_code;
}

/// @nodoc
class _$PlaceDetailModelCopyWithImpl<$Res, $Val extends PlaceDetailModel>
    implements $PlaceDetailModelCopyWith<$Res> {
  _$PlaceDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plus_code = freezed,
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      plus_code: freezed == plus_code
          ? _value.plus_code
          : plus_code // ignore: cast_nullable_to_non_nullable
              as PlusCodeModel?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlusCodeModelCopyWith<$Res>? get plus_code {
    if (_value.plus_code == null) {
      return null;
    }

    return $PlusCodeModelCopyWith<$Res>(_value.plus_code!, (value) {
      return _then(_value.copyWith(plus_code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceDetailModelCopyWith<$Res>
    implements $PlaceDetailModelCopyWith<$Res> {
  factory _$$_PlaceDetailModelCopyWith(
          _$_PlaceDetailModel value, $Res Function(_$_PlaceDetailModel) then) =
      __$$_PlaceDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlusCodeModel? plus_code, List<ResultsModel>? results, String? status});

  @override
  $PlusCodeModelCopyWith<$Res>? get plus_code;
}

/// @nodoc
class __$$_PlaceDetailModelCopyWithImpl<$Res>
    extends _$PlaceDetailModelCopyWithImpl<$Res, _$_PlaceDetailModel>
    implements _$$_PlaceDetailModelCopyWith<$Res> {
  __$$_PlaceDetailModelCopyWithImpl(
      _$_PlaceDetailModel _value, $Res Function(_$_PlaceDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plus_code = freezed,
    Object? results = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PlaceDetailModel(
      plus_code: freezed == plus_code
          ? _value.plus_code
          : plus_code // ignore: cast_nullable_to_non_nullable
              as PlusCodeModel?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDetailModel implements _PlaceDetailModel {
  const _$_PlaceDetailModel(
      {this.plus_code, final List<ResultsModel>? results, this.status})
      : _results = results;

  factory _$_PlaceDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDetailModelFromJson(json);

  @override
  final PlusCodeModel? plus_code;
  final List<ResultsModel>? _results;
  @override
  List<ResultsModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;

  @override
  String toString() {
    return 'PlaceDetailModel(plus_code: $plus_code, results: $results, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDetailModel &&
            (identical(other.plus_code, plus_code) ||
                other.plus_code == plus_code) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plus_code,
      const DeepCollectionEquality().hash(_results), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceDetailModelCopyWith<_$_PlaceDetailModel> get copyWith =>
      __$$_PlaceDetailModelCopyWithImpl<_$_PlaceDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDetailModelToJson(
      this,
    );
  }
}

abstract class _PlaceDetailModel implements PlaceDetailModel {
  const factory _PlaceDetailModel(
      {final PlusCodeModel? plus_code,
      final List<ResultsModel>? results,
      final String? status}) = _$_PlaceDetailModel;

  factory _PlaceDetailModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceDetailModel.fromJson;

  @override
  PlusCodeModel? get plus_code;
  @override
  List<ResultsModel>? get results;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDetailModelCopyWith<_$_PlaceDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LatlngModel _$LatlngModelFromJson(Map<String, dynamic> json) {
  return _LatlngModel.fromJson(json);
}

/// @nodoc
mixin _$LatlngModel {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatlngModelCopyWith<LatlngModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatlngModelCopyWith<$Res> {
  factory $LatlngModelCopyWith(
          LatlngModel value, $Res Function(LatlngModel) then) =
      _$LatlngModelCopyWithImpl<$Res, LatlngModel>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$LatlngModelCopyWithImpl<$Res, $Val extends LatlngModel>
    implements $LatlngModelCopyWith<$Res> {
  _$LatlngModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LatlngModelCopyWith<$Res>
    implements $LatlngModelCopyWith<$Res> {
  factory _$$_LatlngModelCopyWith(
          _$_LatlngModel value, $Res Function(_$_LatlngModel) then) =
      __$$_LatlngModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_LatlngModelCopyWithImpl<$Res>
    extends _$LatlngModelCopyWithImpl<$Res, _$_LatlngModel>
    implements _$$_LatlngModelCopyWith<$Res> {
  __$$_LatlngModelCopyWithImpl(
      _$_LatlngModel _value, $Res Function(_$_LatlngModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_LatlngModel(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatlngModel implements _LatlngModel {
  const _$_LatlngModel({this.lat, this.lng});

  factory _$_LatlngModel.fromJson(Map<String, dynamic> json) =>
      _$$_LatlngModelFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'LatlngModel(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatlngModel &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LatlngModelCopyWith<_$_LatlngModel> get copyWith =>
      __$$_LatlngModelCopyWithImpl<_$_LatlngModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatlngModelToJson(
      this,
    );
  }
}

abstract class _LatlngModel implements LatlngModel {
  const factory _LatlngModel({final double? lat, final double? lng}) =
      _$_LatlngModel;

  factory _LatlngModel.fromJson(Map<String, dynamic> json) =
      _$_LatlngModel.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_LatlngModelCopyWith<_$_LatlngModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return _Description.fromJson(json);
}

/// @nodoc
mixin _$Description {
  String? get description => throw _privateConstructorUsedError;
  String? get place_id => throw _privateConstructorUsedError;
  StrucuredFormatting? get structured_formatting =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionCopyWith<Description> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionCopyWith<$Res> {
  factory $DescriptionCopyWith(
          Description value, $Res Function(Description) then) =
      _$DescriptionCopyWithImpl<$Res, Description>;
  @useResult
  $Res call(
      {String? description,
      String? place_id,
      StrucuredFormatting? structured_formatting});

  $StrucuredFormattingCopyWith<$Res>? get structured_formatting;
}

/// @nodoc
class _$DescriptionCopyWithImpl<$Res, $Val extends Description>
    implements $DescriptionCopyWith<$Res> {
  _$DescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? place_id = freezed,
    Object? structured_formatting = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      place_id: freezed == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      structured_formatting: freezed == structured_formatting
          ? _value.structured_formatting
          : structured_formatting // ignore: cast_nullable_to_non_nullable
              as StrucuredFormatting?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StrucuredFormattingCopyWith<$Res>? get structured_formatting {
    if (_value.structured_formatting == null) {
      return null;
    }

    return $StrucuredFormattingCopyWith<$Res>(_value.structured_formatting!,
        (value) {
      return _then(_value.copyWith(structured_formatting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DescriptionCopyWith<$Res>
    implements $DescriptionCopyWith<$Res> {
  factory _$$_DescriptionCopyWith(
          _$_Description value, $Res Function(_$_Description) then) =
      __$$_DescriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      String? place_id,
      StrucuredFormatting? structured_formatting});

  @override
  $StrucuredFormattingCopyWith<$Res>? get structured_formatting;
}

/// @nodoc
class __$$_DescriptionCopyWithImpl<$Res>
    extends _$DescriptionCopyWithImpl<$Res, _$_Description>
    implements _$$_DescriptionCopyWith<$Res> {
  __$$_DescriptionCopyWithImpl(
      _$_Description _value, $Res Function(_$_Description) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? place_id = freezed,
    Object? structured_formatting = freezed,
  }) {
    return _then(_$_Description(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      place_id: freezed == place_id
          ? _value.place_id
          : place_id // ignore: cast_nullable_to_non_nullable
              as String?,
      structured_formatting: freezed == structured_formatting
          ? _value.structured_formatting
          : structured_formatting // ignore: cast_nullable_to_non_nullable
              as StrucuredFormatting?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Description implements _Description {
  const _$_Description(
      {this.description, this.place_id, this.structured_formatting});

  factory _$_Description.fromJson(Map<String, dynamic> json) =>
      _$$_DescriptionFromJson(json);

  @override
  final String? description;
  @override
  final String? place_id;
  @override
  final StrucuredFormatting? structured_formatting;

  @override
  String toString() {
    return 'Description(description: $description, place_id: $place_id, structured_formatting: $structured_formatting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Description &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.place_id, place_id) ||
                other.place_id == place_id) &&
            (identical(other.structured_formatting, structured_formatting) ||
                other.structured_formatting == structured_formatting));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, place_id, structured_formatting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      __$$_DescriptionCopyWithImpl<_$_Description>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescriptionToJson(
      this,
    );
  }
}

abstract class _Description implements Description {
  const factory _Description(
      {final String? description,
      final String? place_id,
      final StrucuredFormatting? structured_formatting}) = _$_Description;

  factory _Description.fromJson(Map<String, dynamic> json) =
      _$_Description.fromJson;

  @override
  String? get description;
  @override
  String? get place_id;
  @override
  StrucuredFormatting? get structured_formatting;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      throw _privateConstructorUsedError;
}

StrucuredFormatting _$StrucuredFormattingFromJson(Map<String, dynamic> json) {
  return _StrucuredFormatting.fromJson(json);
}

/// @nodoc
mixin _$StrucuredFormatting {
  String? get main_text => throw _privateConstructorUsedError;
  String? get secondary_text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrucuredFormattingCopyWith<StrucuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrucuredFormattingCopyWith<$Res> {
  factory $StrucuredFormattingCopyWith(
          StrucuredFormatting value, $Res Function(StrucuredFormatting) then) =
      _$StrucuredFormattingCopyWithImpl<$Res, StrucuredFormatting>;
  @useResult
  $Res call({String? main_text, String? secondary_text});
}

/// @nodoc
class _$StrucuredFormattingCopyWithImpl<$Res, $Val extends StrucuredFormatting>
    implements $StrucuredFormattingCopyWith<$Res> {
  _$StrucuredFormattingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main_text = freezed,
    Object? secondary_text = freezed,
  }) {
    return _then(_value.copyWith(
      main_text: freezed == main_text
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary_text: freezed == secondary_text
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StrucuredFormattingCopyWith<$Res>
    implements $StrucuredFormattingCopyWith<$Res> {
  factory _$$_StrucuredFormattingCopyWith(_$_StrucuredFormatting value,
          $Res Function(_$_StrucuredFormatting) then) =
      __$$_StrucuredFormattingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? main_text, String? secondary_text});
}

/// @nodoc
class __$$_StrucuredFormattingCopyWithImpl<$Res>
    extends _$StrucuredFormattingCopyWithImpl<$Res, _$_StrucuredFormatting>
    implements _$$_StrucuredFormattingCopyWith<$Res> {
  __$$_StrucuredFormattingCopyWithImpl(_$_StrucuredFormatting _value,
      $Res Function(_$_StrucuredFormatting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main_text = freezed,
    Object? secondary_text = freezed,
  }) {
    return _then(_$_StrucuredFormatting(
      main_text: freezed == main_text
          ? _value.main_text
          : main_text // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary_text: freezed == secondary_text
          ? _value.secondary_text
          : secondary_text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StrucuredFormatting implements _StrucuredFormatting {
  const _$_StrucuredFormatting({this.main_text, this.secondary_text});

  factory _$_StrucuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$$_StrucuredFormattingFromJson(json);

  @override
  final String? main_text;
  @override
  final String? secondary_text;

  @override
  String toString() {
    return 'StrucuredFormatting(main_text: $main_text, secondary_text: $secondary_text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StrucuredFormatting &&
            (identical(other.main_text, main_text) ||
                other.main_text == main_text) &&
            (identical(other.secondary_text, secondary_text) ||
                other.secondary_text == secondary_text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main_text, secondary_text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StrucuredFormattingCopyWith<_$_StrucuredFormatting> get copyWith =>
      __$$_StrucuredFormattingCopyWithImpl<_$_StrucuredFormatting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StrucuredFormattingToJson(
      this,
    );
  }
}

abstract class _StrucuredFormatting implements StrucuredFormatting {
  const factory _StrucuredFormatting(
      {final String? main_text,
      final String? secondary_text}) = _$_StrucuredFormatting;

  factory _StrucuredFormatting.fromJson(Map<String, dynamic> json) =
      _$_StrucuredFormatting.fromJson;

  @override
  String? get main_text;
  @override
  String? get secondary_text;
  @override
  @JsonKey(ignore: true)
  _$$_StrucuredFormattingCopyWith<_$_StrucuredFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

PredictionModel _$PredictionModelFromJson(Map<String, dynamic> json) {
  return _PredictionModel.fromJson(json);
}

/// @nodoc
mixin _$PredictionModel {
  List<Description>? get predictions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionModelCopyWith<PredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionModelCopyWith<$Res> {
  factory $PredictionModelCopyWith(
          PredictionModel value, $Res Function(PredictionModel) then) =
      _$PredictionModelCopyWithImpl<$Res, PredictionModel>;
  @useResult
  $Res call({List<Description>? predictions});
}

/// @nodoc
class _$PredictionModelCopyWithImpl<$Res, $Val extends PredictionModel>
    implements $PredictionModelCopyWith<$Res> {
  _$PredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = freezed,
  }) {
    return _then(_value.copyWith(
      predictions: freezed == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Description>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PredictionModelCopyWith<$Res>
    implements $PredictionModelCopyWith<$Res> {
  factory _$$_PredictionModelCopyWith(
          _$_PredictionModel value, $Res Function(_$_PredictionModel) then) =
      __$$_PredictionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Description>? predictions});
}

/// @nodoc
class __$$_PredictionModelCopyWithImpl<$Res>
    extends _$PredictionModelCopyWithImpl<$Res, _$_PredictionModel>
    implements _$$_PredictionModelCopyWith<$Res> {
  __$$_PredictionModelCopyWithImpl(
      _$_PredictionModel _value, $Res Function(_$_PredictionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? predictions = freezed,
  }) {
    return _then(_$_PredictionModel(
      predictions: freezed == predictions
          ? _value._predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as List<Description>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PredictionModel implements _PredictionModel {
  const _$_PredictionModel({final List<Description>? predictions})
      : _predictions = predictions;

  factory _$_PredictionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionModelFromJson(json);

  final List<Description>? _predictions;
  @override
  List<Description>? get predictions {
    final value = _predictions;
    if (value == null) return null;
    if (_predictions is EqualUnmodifiableListView) return _predictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PredictionModel(predictions: $predictions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictionModel &&
            const DeepCollectionEquality()
                .equals(other._predictions, _predictions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_predictions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredictionModelCopyWith<_$_PredictionModel> get copyWith =>
      __$$_PredictionModelCopyWithImpl<_$_PredictionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionModelToJson(
      this,
    );
  }
}

abstract class _PredictionModel implements PredictionModel {
  const factory _PredictionModel({final List<Description>? predictions}) =
      _$_PredictionModel;

  factory _PredictionModel.fromJson(Map<String, dynamic> json) =
      _$_PredictionModel.fromJson;

  @override
  List<Description>? get predictions;
  @override
  @JsonKey(ignore: true)
  _$$_PredictionModelCopyWith<_$_PredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
