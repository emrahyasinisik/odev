import 'package:flutter/material.dart';
import 'package:odev4/screens/splash_screen.dart';

final theme = ThemeData(
  useMaterial3: true,
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    ),
  );
}
