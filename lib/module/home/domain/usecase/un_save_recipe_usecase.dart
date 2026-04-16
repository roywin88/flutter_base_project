import 'package:base_project/core/network/handle_request.dart';
import 'package:base_project/module/home/domain/repository/home_repository.dart';
import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';

class UnSaveRecipeUsecase {
  final HomeRepository repo;

  UnSaveRecipeUsecase(this.repo);

  FutureResult<bool> call(RecipeEntity recipe) {
    return repo.unSaveRecipe(recipe);
  }
}
