import 'package:flutter/material.dart';
import 'package:odev4/data/meal_data.dart';
import 'package:odev4/models/category.dart';
import 'package:odev4/models/meal.dart';
import 'package:odev4/widgets/meal_card.dart';

class Meals extends StatelessWidget {
  const Meals({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    List<Meal> mealList =
        meals.where((element) => element.categoryId == category.id).toList();

    // ListView
    Widget widget = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // İki sütunlu bir grid
          crossAxisSpacing: 10.0, // Yatay aralık
          mainAxisSpacing: 10.0,
          childAspectRatio: 2 / 2.5,
          // Dikey aralık
        ),
        itemBuilder: (context, index) => MealCard(meal: mealList[index]),
        itemCount: mealList.length,
      ),
    );

    if (mealList.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride hiç bir yemek bulunamadı."),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${category.name} Yemekleri",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: widget,
    );
  }
}
// ListView.builder(
//       itemBuilder: (context, index) => MealCard(meal: mealList[index]),
//       itemCount: mealList.length,
//     );