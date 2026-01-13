import 'package:flutter_recipes_clean_streams/data/repository/recipe_info_repository_impl.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';
import 'package:flutter_recipes_clean_streams/domain/repository/get_recipes_info.dart';

class GetRecipesInfoUseCase {
  final RecipesInfoRepository _recipesInfoRepository;

  GetRecipesInfoUseCase({RecipesInfoRepository? recipesInfoRepository})
    : _recipesInfoRepository =
          recipesInfoRepository ?? RecipeInfoRepositoryImpl();

  Future<Recipe> invokeRecipesInfo(int recipeId) async {
    return await _recipesInfoRepository.onGetRecipeInfo(recipeId);
  }
}
