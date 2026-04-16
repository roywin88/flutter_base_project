import 'package:base_project/core/network/handle_request.dart';
import 'package:base_project/module/home/domain/repository/home_repository.dart';
import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';

class SearchRecipeUsecase {
  final HomeRepository repo;

  SearchRecipeUsecase(this.repo);

  FutureResult<List<RecipeEntity>> call(String keyword) {
    return repo.searchRecipe(keyword);
  }
}
