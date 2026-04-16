import 'package:base_project/module/home/data/model/recipe/recipe_response.dart';
import 'package:base_project/module/splash/domain/model/recipe/recipe_entity.dart';

extension RecipeResponseMapper on RecipeResponse {
  RecipeEntity toEntity() {
    return RecipeEntity(
      id: id,
      title: name,
      category: category,
      area: area,
      instructions: instructions,
      thumbnailUrl: image,
      youtubeUrl: video,
      ingredients: _buildIngredients(),
      tags: _parseTags(tags),
    );
  }

  List<IngredientEntity> _buildIngredients() {
    final ingredientsRaw = [
      ingredient1,
      ingredient2,
      ingredient3,
      ingredient4,
      ingredient5,
      ingredient6,
      ingredient7,
      ingredient8,
      ingredient9,
      ingredient10,
      ingredient11,
      ingredient12,
      ingredient13,
      ingredient14,
      ingredient15,
      ingredient16,
      ingredient17,
      ingredient18,
      ingredient19,
      ingredient20,
    ];

    final measuresRaw = [
      measure1,
      measure2,
      measure3,
      measure4,
      measure5,
      measure6,
      measure7,
      measure8,
      measure9,
      measure10,
      measure11,
      measure12,
      measure13,
      measure14,
      measure15,
      measure16,
      measure17,
      measure18,
      measure19,
      measure20,
    ];

    final List<IngredientEntity> result = [];

    for (int i = 0; i < ingredientsRaw.length; i++) {
      final ingredient = ingredientsRaw[i];
      final measure = measuresRaw[i];

      if (ingredient != null && ingredient.trim().isNotEmpty) {
        result.add(
          IngredientEntity(
            name: ingredient.trim(),
            measure: measure?.trim() ?? '',
          ),
        );
      }
    }

    return result;
  }

  List<String>? _parseTags(String? rawTags) {
    if (rawTags == null || rawTags.trim().isEmpty) {
      return null;
    }
    return rawTags.split(',').map((tag) => tag.trim()).toList();
  }
}
