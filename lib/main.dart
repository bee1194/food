import 'package:flutter/material.dart';
import 'package:food/categories_page.dart';
import 'package:food/food_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/FoodsPage': (context) => FoodsPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Itim",
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Food's categories"),
          centerTitle: true,
        ),
        body: Center(
          child: Center(
            child: SafeArea(
              child: CategoriesPage(),
            ),
          ),
        ),
      ),
    );
  }
}
