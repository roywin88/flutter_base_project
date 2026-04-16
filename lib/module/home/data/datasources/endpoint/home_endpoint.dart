import 'package:base_project/core/env/env.dart';

class HomeEndpoint {
  static final String _urlWithCredential = "api/json/v1/${Env.mealDbApiKey}";

  static String categoryRecipe = "$_urlWithCredential/categories.php";
  static String randomRecipe = "$_urlWithCredential/random.php";
  static String searchRecipe = "$_urlWithCredential/search.php?s=";
}
