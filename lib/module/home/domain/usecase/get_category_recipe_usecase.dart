import 'package:base_project/core/network/handle_request.dart';
import 'package:base_project/module/home/domain/repository/home_repository.dart';
import 'package:base_project/module/splash/domain/model/category/category_entity.dart';

class GetCategoryRecipeUsecase {
  final HomeRepository repo;

  GetCategoryRecipeUsecase(this.repo);

  FutureResult<List<CategoryEntity>> call() {
    return repo.getCategoryRecipe();
  }
}
