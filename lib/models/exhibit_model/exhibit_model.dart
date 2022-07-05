import 'package:freezed_annotation/freezed_annotation.dart';

part 'exhibit_model.freezed.dart';
part 'exhibit_model.g.dart';

@freezed
class ExhibitModel with _$ExhibitModel {
  ExhibitModel._();

  factory ExhibitModel({
    required String title,
    required List<String> images,
  }) = _ExhibitModel;


  factory ExhibitModel.fromJson(Map<String, dynamic> json) =>
      _$ExhibitModelFromJson(json);
}
