import 'package:flutter/material.dart';
import 'package:flutter_recipes_clean_streams/domain/entitis/recipe_entiti.dart';
import 'package:flutter_recipes_clean_streams/presentation/view_model/recipes_view_model.dart';
import 'package:flutter_recipes_clean_streams/presentation/widgets/recipe_widget.dart';

class SearchWidget extends SearchDelegate {
  final RecipesViewModel _recipesViewModel;
  SearchWidget(this._recipesViewModel);
  // final TextEditingController _queryTextController = TextEditingController();

  // String get query => _queryTextController.text;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    _recipesViewModel.searchRecipes(query);
    return StreamBuilder<List<Recipe>>(
      initialData: [],
      stream: _recipesViewModel.resultStream,
      builder: (context, AsyncSnapshot<List<Recipe>> snapshot) {
        List<Recipe> recipes = snapshot.data ?? [];

        List<Recipe> recipe = recipes
            .where((e) => e.title!.toLowerCase().contains(query))
            .toList();
        return ListView.builder(
          itemCount: recipe.length,
          itemBuilder: (BuildContext context, int index) {
            return RecipeWidget(recipe: recipe[index], tap: () {});
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
