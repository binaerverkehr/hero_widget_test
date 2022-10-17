import 'package:flutter/material.dart';
import 'package:hero_widget_test/data/recipe_data.dart';
import 'package:hero_widget_test/screens/recipe_detail_screen.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            final recipe = recipes[index];

            return ListTile(
              leading: Hero(
                tag: 'recipeImageTag${recipe.id}',
                child: Image.network(
                  recipe.imageLink,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
              ),
              title: Text(recipe.title),
              subtitle: Text('Ingredients: ${recipe.ingredientsFormatted}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RecipeDetailScreen(recipe: recipe);
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
