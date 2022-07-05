// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exhibit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExhibitModel _$$_ExhibitModelFromJson(Map<String, dynamic> json) =>
    _$_ExhibitModel(
      title: json['title'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ExhibitModelToJson(_$_ExhibitModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'images': instance.images,
    };
