import 'package:base_project/core/network/handle_request.dart';
import 'package:base_project/module/home/data/datasources/home_remote_datasource.dart';
import 'package:base_project/module/home/data/mapper/category_mapper.dart';
import 'package:base_project/module/home/data/mapper/recipe_mapper.dart';

import 'package:base_project/module/splash/domain/model/category/category_entity.dart';

import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource _remote;
  HomeRepositoryImpl(this._remote);

  @override
  FutureResult<List<CategoryEntity>> getCategoryRecipe() {
    return handleRequest(
      execute: () async {
        final result = await _remote.getCategoryRecipe();
        final entities = result.map((model) => model.toEntity()).toList();

        return Right(entities);
      },
    );
  }

  @override
  FutureResult<List<RecipeEntity>> getRandomRecipe() {
    return handleRequest(
      execute: () async {
        final result = await Future.wait([
          _remote.getRandomRecipe(),
          _remote.getRandomRecipe(),
          _remote.getRandomRecipe(),
          _remote.getRandomRecipe(),
          _remote.getRandomRecipe(),
          _remote.getRandomRecipe(),
          _remote.getRandomRecipe(),
        ]);
        final randomResult = result.expand((e) => e);

        final seenIds = <String>{};
        final uniqueRecipes = randomResult.where((recipe) {
          return seenIds.add(recipe.id);
        });

        final entities = uniqueRecipes
            .map((model) => model.toEntity())
            .toList();
        return Right(entities);
      },
    );
  }

  @override
  FutureResult<bool> saveRecipe(RecipeEntity recipe) {
    // todo: implement saveRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<List<RecipeEntity>> searchRecipe(String keyword) {
    return handleRequest(
      execute: () async {
        final result = await _remote.searchRecipe(keyword);
        final entities = result.map((model) => model.toEntity()).toList();

        return Right(entities);
      },
    );
  }

  @override
  FutureResult<bool> unSaveRecipe(RecipeEntity recipe) {
    // todo: implement unSaveRecipe
    throw UnimplementedError();
  }

  @override
  Stream<List<RecipeEntity>> watchSavedRecipe(int? limit) {
    // todo: implement watchSavedRecipes
    throw UnimplementedError();
  }
}
