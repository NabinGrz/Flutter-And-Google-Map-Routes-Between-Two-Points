// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressComponentDetail _$$_AddressComponentDetailFromJson(
        Map<String, dynamic> json) =>
    _$_AddressComponentDetail(
      long_name: json['long_name'] as String?,
      short_name: json['short_name'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AddressComponentDetailToJson(
        _$_AddressComponentDetail instance) =>
    <String, dynamic>{
      'long_name': instance.long_name,
      'short_name': instance.short_name,
      'types': instance.types,
    };

_$_ResultsModel _$$_ResultsModelFromJson(Map<String, dynamic> json) =>
    _$_ResultsModel(
      address_components: (json['address_components'] as List<dynamic>?)
          ?.map(
              (e) => AddressComponentDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      formatted_address: json['formatted_address'] as String?,
      geometry: json['geometry'] == null
          ? null
          : GeometryModel.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultsModelToJson(_$_ResultsModel instance) =>
    <String, dynamic>{
      'address_components': instance.address_components,
      'formatted_address': instance.formatted_address,
      'geometry': instance.geometry,
    };

_$_GeometryModel _$$_GeometryModelFromJson(Map<String, dynamic> json) =>
    _$_GeometryModel(
      location: json['location'] == null
          ? null
          : LatlngModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeometryModelToJson(_$_GeometryModel instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_PlusCodeModel _$$_PlusCodeModelFromJson(Map<String, dynamic> json) =>
    _$_PlusCodeModel(
      compound_code: json['compound_code'] as String?,
      global_code: json['global_code'] as String?,
    );

Map<String, dynamic> _$$_PlusCodeModelToJson(_$_PlusCodeModel instance) =>
    <String, dynamic>{
      'compound_code': instance.compound_code,
      'global_code': instance.global_code,
    };

_$_PlaceDetailModel _$$_PlaceDetailModelFromJson(Map<String, dynamic> json) =>
    _$_PlaceDetailModel(
      plus_code: json['plus_code'] == null
          ? null
          : PlusCodeModel.fromJson(json['plus_code'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_PlaceDetailModelToJson(_$_PlaceDetailModel instance) =>
    <String, dynamic>{
      'plus_code': instance.plus_code,
      'results': instance.results,
      'status': instance.status,
    };

_$_LatlngModel _$$_LatlngModelFromJson(Map<String, dynamic> json) =>
    _$_LatlngModel(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LatlngModelToJson(_$_LatlngModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_Description _$$_DescriptionFromJson(Map<String, dynamic> json) =>
    _$_Description(
      description: json['description'] as String?,
      place_id: json['place_id'] as String?,
      structured_formatting: json['structured_formatting'] == null
          ? null
          : StrucuredFormatting.fromJson(
              json['structured_formatting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DescriptionToJson(_$_Description instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.place_id,
      'structured_formatting': instance.structured_formatting,
    };

_$_StrucuredFormatting _$$_StrucuredFormattingFromJson(
        Map<String, dynamic> json) =>
    _$_StrucuredFormatting(
      main_text: json['main_text'] as String?,
      secondary_text: json['secondary_text'] as String?,
    );

Map<String, dynamic> _$$_StrucuredFormattingToJson(
        _$_StrucuredFormatting instance) =>
    <String, dynamic>{
      'main_text': instance.main_text,
      'secondary_text': instance.secondary_text,
    };

_$_PredictionModel _$$_PredictionModelFromJson(Map<String, dynamic> json) =>
    _$_PredictionModel(
      predictions: (json['predictions'] as List<dynamic>?)
          ?.map((e) => Description.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PredictionModelToJson(_$_PredictionModel instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
    };
