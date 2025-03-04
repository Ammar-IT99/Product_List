import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart'; // Import Injectable
import '../models/product.dart'; // Import Product model

@lazySingleton
class ProductRepository {
  final String apiUrl = "https://fakestoreapi.com/products";

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}