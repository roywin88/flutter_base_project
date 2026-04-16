import 'package:base_project/core/network/handle_request.dart';
import 'package:base_project/module/home/domain/repository/home_repository.dart';
import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';

class GetRandomRecipeUsecase {
  final HomeRepository repo;

  GetRandomRecipeUsecase(this.repo);

  FutureResult<List<RecipeEntity>> call() {
    return repo.getRandomRecipe();
  }
}
