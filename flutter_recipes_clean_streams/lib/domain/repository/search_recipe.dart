import 'package:flutter_recipes_clean_streams/domain/entitis/search_entiti.dart';

abstract class SearchRecipeRepository {
  Future<SearchRecipe> onGetResultSearch(String query);
}
