import 'package:flutter/material.dart';
import 'package:odev4/screens/categories.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Arka plan resmi
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/img/splash_img.png'), // Arka plan resminin yolu
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Metinler ve buton
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Ana Yemekler • Aperatifler • Tatlı',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                const Text(
                  "Order from top restaurant",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Categories(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sipariş Ver',
                      style: TextStyle(fontSize: 30),
                    ), // Buton metni
                  ),
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
