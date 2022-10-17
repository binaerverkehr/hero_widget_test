class Recipe {
  final String title; // Titel
  final String description; // Beschreibung
  final List<String> ingredients; // Zutaten
  final String imageLink;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.imageLink,
  });

  String get ingredientsFormatted => ingredients.join(', ');
}
