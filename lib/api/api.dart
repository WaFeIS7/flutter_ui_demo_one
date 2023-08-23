import 'dart:convert';

import 'package:flutter_demo_1/api/model/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final FutureProvider<List<Product>> providerProducts =
    FutureProvider<List<Product>>((ref) {
  return Api().getProducts();
});

class Api {
  Future<List<Product>> getProducts() async {
    Uri url = Uri.https('fakestoreapi.com', 'products');
    var rp = await http.get(url, headers: {"Accept": "application/json"});
    if (rp.statusCode == 200) {
      return List<Product>.from(
          json.decode(rp.body).map((x) => Product.fromJson(x)));
    }
    throw Exception('Something went wrong to get List Products');
  }
}
