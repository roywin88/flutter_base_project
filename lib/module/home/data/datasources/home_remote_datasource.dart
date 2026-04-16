import 'package:base_project/core/network/service/network_service.dart';
import 'package:base_project/module/home/data/datasources/endpoint/home_endpoint.dart';
import 'package:base_project/module/home/data/model/category/category_response.dart';
import 'package:base_project/module/home/data/model/recipe/recipe_response.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryResponse>> getCategoryRecipe();
  Future<List<RecipeResponse>> getRandomRecipe();
  Future<List<RecipeResponse>> searchRecipe(String keyword);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final NetworkService _service;

  HomeRemoteDataSourceImpl(this._service);
  @override
  Future<List<CategoryResponse>> getCategoryRecipe() {
    return _service.get(
      HomeEndpoint.categoryRecipe,
      converter: (json) {
        final list = json['categories'] as List;
        return list.map((e) => CategoryResponse.fromJson(e)).toList();
      },
    );
  }

  @override
  Future<List<RecipeResponse>> getRandomRecipe() {
    return _service.get(
      HomeEndpoint.randomRecipe,
      converter: (json) {
        final list = json['meals'] as List;
        return list.map((e) => RecipeResponse.fromJson(e)).toList();
      },
    );
  }

  @override
  Future<List<RecipeResponse>> searchRecipe(String keyword) {
    return _service.get(
      HomeEndpoint.searchRecipe,
      queryParameters: {'s': keyword},
      converter: (json) {
        final list = json['meals'] as List;
        return list.map((e) => RecipeResponse.fromJson(e)).toList();
      },
    );
  }
}
