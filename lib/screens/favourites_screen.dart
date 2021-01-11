import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> _favouritesList;

  FavouritesScreen(this._favouritesList);

  @override
  Widget build(BuildContext context) {
    if (_favouritesList.isEmpty) {
      return Center(
        child: Text('You have no favourites yet!'),
      );
    } else {
      return ListView.builder(
          itemBuilder: ((ctx, index) {
            return MealItem(
                id: _favouritesList[index].id,
                title: _favouritesList[index].title,
                imageUrl: _favouritesList[index].imageUrl,
                duration: _favouritesList[index].duration,
                complexity: _favouritesList[index].complexity,
                affordability: _favouritesList[index].affordability);
          }),
          itemCount: _favouritesList.length);
    }
  }
}
