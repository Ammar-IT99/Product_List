class Product {
  final int id;
  final String title;
  final String description;
  final String image;
  final double price;
  final double rate;
final double count;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.rate,
    required this.count,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      image: json['image'],
      price: json['price'].toDouble(),
      rate: json['rating']['rate'].toDouble(),
      count: json['rating']['count'].toDouble(),
    );
  }
}