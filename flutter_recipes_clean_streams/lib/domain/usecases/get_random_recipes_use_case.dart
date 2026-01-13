import 'package:flutter_recipes_clean_streams/data/repository/random_recipes_repository_impl.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';
import 'package:flutter_recipes_clean_streams/domain/repository/get_random_recipes.dart';

class GetRandomRecipeUseCase {
  final RandomRecipesRepository _randomRecipesRepository;

  GetRandomRecipeUseCase({RandomRecipesRepository? randomRecipesRepository})
    : _randomRecipesRepository =
          randomRecipesRepository ?? RandomRecipesRepositoryImpl();

  Future<List<Recipe>> invokeRandomRecipes() async {
    return await _randomRecipesRepository.onGetRandomRecipes();
  }
}
