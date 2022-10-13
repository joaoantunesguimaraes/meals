import 'package:flutter/material.dart';
//import 'package:meals/models/meal.dart';
//import '../data/dummy_data.dart';
import '../components/meal_item.dart';

import '../models/category.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // Atributos
  final List<Meal> meals;

  // Construtor
  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    // Para receber a categoria
    // deixa de ser passada via Construtor
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    // final categoryMeals =
    //     meals.where((meal) => meal.categories.contains(category.id)).toList();

final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();


    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: ((context, index) {
          return MealItem(categoryMeals[index]);
        }),
      ),
    );
  }
}
