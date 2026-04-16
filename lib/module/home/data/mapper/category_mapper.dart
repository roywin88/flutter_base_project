import 'package:base_project/module/home/data/model/category/category_response.dart';
import 'package:base_project/module/splash/domain/model/category/category_entity.dart';

extension CategoryResponseMapper on CategoryResponse {
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      name: name,
      description: description,
      thumbnailUrl: image,
    );
  }
}
