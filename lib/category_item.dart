import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/models/category.dart';

import 'food_page.dart';

// ignore: must_be_immutable
class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return new InkWell(
      onTap: () {
        print("tapped on category: ${this.category.content}");
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => FoodsPage(
        //           category: this.category,
        //         )));
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': this.category});
      },
      splashColor: Colors.deepPurple,
      child: new Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              this.category.content,
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: _color,
            gradient: LinearGradient(
                colors: [_color.withOpacity(0.6), _color],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
