import 'package:flutter/material.dart';
import 'package:odev4/models/meal.dart';
import 'package:odev4/widgets/star_rating.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetails extends StatelessWidget {
  final Meal meal;
  const MealDetails({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${meal.name} İçindekiler"),
      ),
      body: Column(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                Text(
                  "İçindekiler : \n${meal.ingredients}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                StarRating(
                  rating: meal.rating,
                  size: 32,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
