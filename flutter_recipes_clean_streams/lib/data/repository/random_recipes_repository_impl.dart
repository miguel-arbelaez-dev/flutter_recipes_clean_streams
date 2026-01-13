import 'package:flutter_recipes_clean_streams/data/remote_data_source/recipe_data_source.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';
import 'package:flutter_recipes_clean_streams/domain/repository/get_random_recipes.dart';

class RandomRecipesRepositoryImpl extends RandomRecipesRepository {
  final RandomRecipeDataSource _randomRecipeDataSource;

  RandomRecipesRepositoryImpl({RandomRecipeDataSource? randomRecipeDataSource})
    : _randomRecipeDataSource =
          randomRecipeDataSource ?? RandomRecipeDataSource();
  @override
  Future<List<Recipe>> onGetRandomRecipes() async {
    return await _randomRecipeDataSource.getRandomRecipes();
  }
}
