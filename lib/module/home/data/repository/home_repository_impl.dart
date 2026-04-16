import 'package:base_project/core/network/handle_request.dart';

import 'package:base_project/module/splash/domain/model/category/category_entity.dart';

import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';

import '../../domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  FutureResult<List<CategoryEntity>> getCategoryRecipe() {
    // todo: implement getCategoryRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<List<RecipeEntity>> getRandomRecipe() {
    // todo: implement getRandomRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<bool> saveRecipe(RecipeEntity recipe) {
    // todo: implement saveRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<List<RecipeEntity>> searchRecipe(String keyword) {
    // todo: implement searchRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<bool> unSaveRecipe(RecipeEntity recipe) {
    // todo: implement unSaveRecipe
    throw UnimplementedError();
  }

  @override
  Stream<List<RecipeEntity>> watchSavedRecipes() {
    // todo: implement watchSavedRecipes
    throw UnimplementedError();
  }
}
