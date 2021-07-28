import 'package:flutter/material.dart';
import 'package:shoppie/models/product.dart';
import 'package:shoppie/widgets/products_grid.dart';

class ProductsOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoppie'),
      ),
      body: ProductsGrid(),
    );
  }
}

