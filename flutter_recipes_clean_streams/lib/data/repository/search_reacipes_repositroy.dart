import 'package:flutter_recipes_clean_streams/data/remote_data_source/search_recipe_data_source.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/search_entiti.dart';
import 'package:flutter_recipes_clean_streams/domain/repository/search_recipe.dart';

class SearchRecipesRepositoryImpl extends SearchRecipeRepository {
  final SearchRecipeDataSource _searchRecipeDataSource;

  SearchRecipesRepositoryImpl({SearchRecipeDataSource? searchRecipeDataSource})
    : _searchRecipeDataSource =
          searchRecipeDataSource ?? SearchRecipeDataSource();

  @override
  Future<SearchRecipe> onGetResultSearch(String query) async {
    return await _searchRecipeDataSource.searchRecipes(query);
  }
}
