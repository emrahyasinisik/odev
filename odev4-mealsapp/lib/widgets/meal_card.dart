import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:odev4/models/meal.dart';
import 'package:odev4/screens/meals_details.dart';
import 'package:transparent_image/transparent_image.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MealDetails(
              meal: meal,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Color(0xFFC5C5C5),
          ),
        ),
        child: Column(
          children: [
            ClipOval(
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(meal.imageUrl),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 110,
              ),
            ),
            Text(
              meal.name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
