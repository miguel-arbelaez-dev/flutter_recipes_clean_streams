import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';

abstract class RecipesInfoRepository {
  Future<Recipe> onGetRecipeInfo(int recipeId);
}
