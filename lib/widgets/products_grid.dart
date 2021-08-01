
import 'package:flutter/material.dart';
import 'package:shoppie/providers/product.dart';
import 'package:provider/provider.dart';
import 'package:shoppie/providers/products.dart';
import 'package:shoppie/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;
  ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {

    final productsData = Provider.of<Products>(context);
    final products = showFavs ? productsData.favoriteItems :productsData.allItems;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // create: (ctx) => products[i],
        value: products[i],
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3 / 2,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
