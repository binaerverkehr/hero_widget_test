import 'package:flutter/material.dart';

class Recipe {
  final String title; // Titel
  final String description; // Beschreibung
  final List<String> ingredients; // Zutaten
  final Image image;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.image,
  });
}
