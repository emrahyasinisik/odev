import 'package:flutter/material.dart';
import 'package:odev4/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(92, 151, 49, 9)));

void main() {
  runApp(MaterialApp(theme: theme, home: const Categories()));
}
