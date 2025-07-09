import 'package:flutter/material.dart';
import '../models/product.dart';

final List<Product> sampleProducts = [
  Product(name: 'Apples', price: 2.99),
  Product(name: 'Bananas', price: 1.49),
  Product(name: 'Carrots', price: 1.99),
  Product(name: 'Bread', price: 3.49),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grocery Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          )
        ],
      ),
     body: ListView.builder(
  itemCount: sampleProducts.length,
  itemBuilder: (context, index) {
    final product = sampleProducts[index];
    return ListTile(
      title: Text(product.name),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${product.name} added to cart!')),
          );
        },
      ),
    );
  },
),
    );
  }
}
