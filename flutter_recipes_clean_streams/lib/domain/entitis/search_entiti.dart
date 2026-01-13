import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';

class SearchRecipe {
  int? offset;
  int? number;
  List<Recipe>? results;
  int? totalResults;
  SearchRecipe({this.offset, this.number, this.results, this.totalResults});
}
