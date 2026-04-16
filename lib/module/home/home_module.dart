import 'package:base_project/core/utils/app_utils.dart';
import 'package:base_project/module/home/data/repository/home_repository_impl.dart';
import 'package:base_project/module/home/domain/repository/home_repository.dart';
import 'package:base_project/module/home/domain/usecase/get_category_recipe_usecase.dart';
import 'package:base_project/module/home/domain/usecase/get_random_recipe_usecase.dart';
import 'package:base_project/module/home/domain/usecase/save_recipe_usecase.dart';
import 'package:base_project/module/home/domain/usecase/search_recipe_usecase.dart';
import 'package:base_project/module/home/domain/usecase/un_save_recipe_usecase.dart';

class HomeModule {
  HomeModule._();
  static Future<void> init() async {
    // datasource
    di.registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(
        di(),
      ),
    );

    // repository
    di.registerSingleton<HomeRepository>(
      HomeRepositoryImpl(di()),
    );

    // usecase
    di.registerSingleton(GetCategoryRecipeUsecase(di()));
    di.registerSingleton(GetRandomRecipeUsecase(di()));
    di.registerSingleton(SearchRecipeUsecase(di()));
    di.registerSingleton(SaveRecipeUsecase(di()));
    di.registerSingleton(UnSaveRecipeUsecase(di()));
    di.registerSingleton((di()));
  }
}
