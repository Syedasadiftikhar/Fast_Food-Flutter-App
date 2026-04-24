class Deal {
  final String title;
  final int price;
  final List<String> items;
  final String tag;
  final String imageUrl;

  const Deal({
    required this.title,
    required this.price,
    required this.items,
    this.tag = '',
    required this.imageUrl,
  });
}
