import 'package:flutter/material.dart';

import '../models/meal.dart';

import '../components/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  // Atributos
  final List<Meal> favoriteMeals;

  // Construtor
  const FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição foi marcada como favorita'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return  MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
