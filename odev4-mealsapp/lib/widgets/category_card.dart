import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  final Color color;
  final String name;
  const CategoryCard({
    super.key,
    required this.color,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint("$name tıklandı");
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color.withOpacity(0.3)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
