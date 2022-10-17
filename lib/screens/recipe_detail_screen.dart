import 'package:flutter/material.dart';
import 'package:hero_widget_test/models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: 'recipeImageTag${recipe.id}',
                child: Image.network(recipe.imageLink),
              ),
              const SizedBox(height: 10),
              Text(
                recipe.title,
                textScaleFactor: 3.0,
              ),
              Text(recipe.description),
              const SizedBox(height: 20),
              const Text('Ingredients: ', textScaleFactor: 2.0),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: ListView.builder(
                  itemCount: recipe.ingredients.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(recipe.ingredients[index]),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
