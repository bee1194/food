import 'package:flutter/cupertino.dart';
import 'package:food/category_item.dart';
import 'package:food/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      children: fakeCategories.map((e) => CategoryItem(category: e)).toList(),
      gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
