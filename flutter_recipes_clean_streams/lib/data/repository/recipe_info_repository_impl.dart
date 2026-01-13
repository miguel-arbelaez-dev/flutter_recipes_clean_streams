import 'package:flutter_recipes_clean_streams/data/remote_data_source/recipe_info_data_source.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';
import 'package:flutter_recipes_clean_streams/domain/repository/get_recipes_info.dart';

class RecipeInfoRepositoryImpl extends RecipesInfoRepository {
  final RecipeDataInformationSource _dataSource;

  RecipeInfoRepositoryImpl({RecipeDataInformationSource? dataSource})
    : _dataSource = dataSource ?? RecipeDataInformationSource();

  @override
  Future<Recipe> onGetRecipeInfo(int recipeId) async {
    return await _dataSource.getRecipeInformation(recipeId);
  }
}
