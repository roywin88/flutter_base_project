import 'package:base_project/module/home/domain/repository/home_repository.dart';
import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';

class WatchSavedRecipeUsecase {
  final HomeRepository repo;

  WatchSavedRecipeUsecase(this.repo);

  Stream<List<RecipeEntity>> call() {
    return repo.watchSavedRecipes();
  }
}
