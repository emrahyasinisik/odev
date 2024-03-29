import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:odev4/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(92, 150, 49, 9)));

void main() {
  runApp(
    // TODO => Provider Scope ile sarmallanması gerek
    const ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Categories(),
      ),
    ),
  );
}
