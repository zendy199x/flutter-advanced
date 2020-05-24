import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "./screens/products_overview_screen.dart";
import "./screens/product_detail_screen.dart";
import "./providers/products.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    // return ChangeNotifierProvider.value(
      create: (_) => Products(), // using builder if version provider < 4.0
      // value: Products(),
      child: MaterialApp(
          title: "MyShop",
          theme: ThemeData(
            primaryColor: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: "Lato",
          ),
          home: ProductsOverviewScreenn(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          }),
    );
  }
}
