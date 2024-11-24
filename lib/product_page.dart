import 'package:flutter/material.dart';
import 'main.dart';

class ProductPage extends StatelessWidget{
  final Product product;

  const ProductPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(product.name),
    ),
    body: Center(
      child: Column(
        children: <Widget> [
          Image.network(
            product.urlImage,
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            product.price,
            style: const TextStyle(
              fontSize: 25
            ),
          ),
        ],
      ),
    ),
  );
}