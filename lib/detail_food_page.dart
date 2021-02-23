import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/models/food.dart';

// ignore: must_be_immutable
class DetailFoodPage extends StatelessWidget {
  Food food;

  DetailFoodPage({this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(this.food.name),
      ),
      body: Column(
        children: [
          Center(
            child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif', image: food.urlImage),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Ingredients: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          this.food.ingredients != null
              ? Expanded(
                  child: ListView.builder(
                  itemCount: this.food.ingredients.length,
                  itemBuilder: (context, index) {
                    String ingredient = this.food.ingredients[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text('#${index + 1}'),
                      ),
                      title: Text(
                        ingredient,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  },
                ))
              : Text("")
        ],
      ),
    );
  }
}
