import 'package:flutter_recipes_clean_streams/data/repository/search_reacipes_repositroy.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/search_entiti.dart';
import 'package:flutter_recipes_clean_streams/domain/repository/search_recipe.dart';

class SearchRecipesUsesCases {
  final SearchRecipeRepository _searchRecipeRepository;

  SearchRecipesUsesCases({SearchRecipeRepository? searchRecipeRepository})
    : _searchRecipeRepository =
          searchRecipeRepository ?? SearchRecipesRepositoryImpl();

  Future<SearchRecipe> invokeResultsRecipes(String query) async {
    return await _searchRecipeRepository.onGetResultSearch(query);
  }
}
