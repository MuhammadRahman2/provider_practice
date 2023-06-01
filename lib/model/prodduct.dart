
class Product {
  final String? id;
  final String? name;
  final String? category;
  final List<String>? imageUrl;
  final String? oldPrice;
  final List<Map<String, dynamic>>? sizes;
  final String? price;
  final String? title;
  final String? description;

  Product(
      {this.id,
      this.name,
      this.category,
      this.imageUrl,
      this.oldPrice,
      this.sizes,
      this.price,
      this.title,
      this.description});
}
