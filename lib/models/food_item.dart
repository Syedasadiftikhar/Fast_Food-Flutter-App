class FoodItem {
  final String name;
  final String description;
  final int? price;
  final Map<String, int>? sizePrices;
  final String imageUrl;

  const FoodItem({
    required this.name,
    this.description = '',
    this.price,
    this.sizePrices,
    required this.imageUrl,
  });
}

class FoodCategory {
  final String name;
  final List<FoodItem> items;

  const FoodCategory({required this.name, required this.items});
}
