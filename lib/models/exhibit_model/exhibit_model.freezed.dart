// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exhibit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExhibitModel _$ExhibitModelFromJson(Map<String, dynamic> json) {
  return _ExhibitModel.fromJson(json);
}

/// @nodoc
mixin _$ExhibitModel {
  String get title => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExhibitModelCopyWith<ExhibitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitModelCopyWith<$Res> {
  factory $ExhibitModelCopyWith(
          ExhibitModel value, $Res Function(ExhibitModel) then) =
      _$ExhibitModelCopyWithImpl<$Res>;
  $Res call({String title, List<String> images});
}

/// @nodoc
class _$ExhibitModelCopyWithImpl<$Res> implements $ExhibitModelCopyWith<$Res> {
  _$ExhibitModelCopyWithImpl(this._value, this._then);

  final ExhibitModel _value;
  // ignore: unused_field
  final $Res Function(ExhibitModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ExhibitModelCopyWith<$Res>
    implements $ExhibitModelCopyWith<$Res> {
  factory _$$_ExhibitModelCopyWith(
          _$_ExhibitModel value, $Res Function(_$_ExhibitModel) then) =
      __$$_ExhibitModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<String> images});
}

/// @nodoc
class __$$_ExhibitModelCopyWithImpl<$Res>
    extends _$ExhibitModelCopyWithImpl<$Res>
    implements _$$_ExhibitModelCopyWith<$Res> {
  __$$_ExhibitModelCopyWithImpl(
      _$_ExhibitModel _value, $Res Function(_$_ExhibitModel) _then)
      : super(_value, (v) => _then(v as _$_ExhibitModel));

  @override
  _$_ExhibitModel get _value => super._value as _$_ExhibitModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_ExhibitModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExhibitModel extends _ExhibitModel {
  _$_ExhibitModel({required this.title, required final List<String> images})
      : _images = images,
        super._();

  factory _$_ExhibitModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExhibitModelFromJson(json);

  @override
  final String title;
  final List<String> _images;
  @override
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ExhibitModel(title: $title, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExhibitModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_ExhibitModelCopyWith<_$_ExhibitModel> get copyWith =>
      __$$_ExhibitModelCopyWithImpl<_$_ExhibitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExhibitModelToJson(this);
  }
}

abstract class _ExhibitModel extends ExhibitModel {
  factory _ExhibitModel(
      {required final String title,
      required final List<String> images}) = _$_ExhibitModel;
  _ExhibitModel._() : super._();

  factory _ExhibitModel.fromJson(Map<String, dynamic> json) =
      _$_ExhibitModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<String> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ExhibitModelCopyWith<_$_ExhibitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
