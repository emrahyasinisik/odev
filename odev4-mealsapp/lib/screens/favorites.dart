import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:odev4/providers/favorites_provider.dart';

class Favorites extends ConsumerStatefulWidget {
  const Favorites({super.key});

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    final favorites = ref.watch(favoriteMealsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoriler'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => Text(favorites[index].name),
        itemCount: favorites.length,
      ),
    );
  }
}
