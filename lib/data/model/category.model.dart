import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.model.freezed.dart';
part 'category.model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required String text,
    @Default(false) bool isSelected,
  }) = _CategoryModel;
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
