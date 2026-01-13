import 'dart:convert';

import 'package:flutter_recipes_clean_streams/data/models/recipe_model.dart';
import 'package:http/http.dart' as http;

class RecipeDataInformationSource {
  RecipeDataInformationSource();

  Future<RecipeModel> getRecipeInformation(int recipeId) async {
    final Uri url = Uri.parse(
      'https://api.spoonacular.com/recipes/$recipeId/information?apiKey=eefb513a794042d7adbad45894a2f239',
    );

    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final responseJson = json.decode(response.body);
      return RecipeModel.fromMap(responseJson);
    } else {
      throw Exception('Error en la solicitud');
    }
  }
}
