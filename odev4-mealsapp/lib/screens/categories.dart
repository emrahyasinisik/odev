import 'package:flutter/material.dart';
import 'package:odev4/data/category_data.dart';
import 'package:odev4/models/category.dart';
import 'package:odev4/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categoryList = categories;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategoriler"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1),
        children: categoryList
            .map((e) => CategoryCard(
                  name: e.name,
                  color: e.color,
                ))
            .toList(),
      ),
    );
  }
}
