import 'package:flutter/material.dart';

class Recipe {
  final String title; // Titel
  final String description; // Beschreibung
  final List<String> ingredients; // Zutaten
  final Image image;

  Recipe(
    this.title,
    this.description,
    this.ingredients,
    this.image,
  );
}
