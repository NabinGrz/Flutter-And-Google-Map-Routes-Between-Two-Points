import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_model.freezed.dart';
part 'place_model.g.dart';

@freezed
class AddressComponentDetail with _$AddressComponentDetail {
  const factory AddressComponentDetail({
    String? long_name,
    String? short_name,
    List<String>? types,
  }) = _AddressComponentDetail;

  factory AddressComponentDetail.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentDetailFromJson(json);
}

@freezed
class ResultsModel with _$ResultsModel {
  const factory ResultsModel({
    List<AddressComponentDetail>? address_components,
    String? formatted_address,
    GeometryModel? geometry,
  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
}

@freezed
class GeometryModel with _$GeometryModel {
  const factory GeometryModel({
    LatlngModel? location,
  }) = _GeometryModel;

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);
}

@freezed
class PlusCodeModel with _$PlusCodeModel {
  const factory PlusCodeModel({
    String? compound_code,
    String? global_code,
  }) = _PlusCodeModel;

  factory PlusCodeModel.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeModelFromJson(json);
}

@freezed
class PlaceDetailModel with _$PlaceDetailModel {
  const factory PlaceDetailModel({
    PlusCodeModel? plus_code,
    List<ResultsModel>? results,
    String? status,
  }) = _PlaceDetailModel;

  factory PlaceDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailModelFromJson(json);
}

@freezed
class LatlngModel with _$LatlngModel {
  const factory LatlngModel({
    double? lat,
    double? lng,
  }) = _LatlngModel;

  factory LatlngModel.fromJson(Map<String, dynamic> json) =>
      _$LatlngModelFromJson(json);
}

@freezed
class Description with _$Description {
  const factory Description({
    String? description,
    String? place_id,
    StrucuredFormatting? structured_formatting,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

@freezed
class StrucuredFormatting with _$StrucuredFormatting {
  const factory StrucuredFormatting({
    String? main_text,
    String? secondary_text,
  }) = _StrucuredFormatting;

  factory StrucuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StrucuredFormattingFromJson(json);
}

@freezed
class PredictionModel with _$PredictionModel {
  const factory PredictionModel({
    List<Description>? predictions,
  }) = _PredictionModel;

  factory PredictionModel.fromJson(Map<String, dynamic> json) =>
      _$PredictionModelFromJson(json);
}
