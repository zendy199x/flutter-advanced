import "package:flutter/material.dart";

import "../providers/product.dart";
import "../widgets/product_item.dart";
import "../widgets/products_grid.dart";

class ProductsOverviewScreenn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyShop"),
      ),
      body: ProductsGrid(),
    );
  }
}