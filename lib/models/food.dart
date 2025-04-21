class Food {
  final String name;
  final String description;
  final String imagepath;
  final double price;
  final FoodCategory category;
  List<Addon> avaiableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.price,
    required this.avaiableAddons,
    required this.category,
  });
}

enum FoodCategory {
  burger,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
