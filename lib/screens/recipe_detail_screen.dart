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
        child: Card(
          shadowColor: Colors.grey,
          elevation: 5.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(recipe.imageLink),
              const SizedBox(height: 10),
              Text(
                recipe.title,
                textScaleFactor: 3.0,
              ),
              Text(recipe.description),
              const SizedBox(height: 20),
              const Text('Ingredients: ', textScaleFactor: 2.0),
              Expanded(
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
