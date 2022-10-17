import 'package:flutter/cupertino.dart';
import 'package:hero_widget_test/models/recipe.dart';

final List<Recipe> recipes = [
  Recipe(
    title: 'Pizza Magharita',
    description: 'lorem ipsum',
    ingredients: [
      'Ingredient1',
      'Ingredient2',
    ],
    image: Image.network(
        'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'),
  ),
  Recipe(
    title: 'Chocolate Cake',
    description: 'lorem ipsum',
    ingredients: [
      'Ingredient1',
      'Ingredient2',
    ],
    image: Image.network(
        'https://images.unsplash.com/photo-1578985545062-69928b1d9587?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1578&q=80'),
  ),
  Recipe(
    title: 'Ice Cream',
    description: 'lorem ipsum',
    ingredients: [
      'Ingredient1',
      'Ingredient2',
    ],
    image: Image.network(
        'https://images.unsplash.com/photo-1560008581-09826d1de69e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=888&q=80'),
  ),
];
