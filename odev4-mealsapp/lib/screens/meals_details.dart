import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:odev4/models/meal.dart';
import 'package:odev4/providers/favorites_provider.dart';
import 'package:odev4/widgets/star_rating.dart';
import 'package:transparent_image/transparent_image.dart';

// TODO: => State'leri Consumer State çevirmek lazım..
// TODO: => Statefull widget'a çevrilmesi lazım...
class MealDetails extends ConsumerStatefulWidget {
  const MealDetails({
    super.key,
    required this.meal,
  });
  final Meal meal;
  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends ConsumerState<MealDetails> {
  @override
  Widget build(BuildContext context) {
    final favorites = ref.watch(favoriteMealsProvider);
    // TODO: => final favorites = ref.watch(favoritesMealsProvider) burada provider izlenir.
    // TODO: => final favorites _?
    return Scaffold(
      //TODO: => AppBar'a action button atanacak => Icon(Icons.favorite_border)
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                ref
                    .read(favoriteMealsProvider.notifier)
                    .toggleMealFavorite(widget.meal);
              },
              icon: Icon(
                favorites.contains(widget.meal)
                    ? Icons.favorite
                    : Icons.favorite_border,
              ))
        ],
        // TODO:  => Statefull'da bir const'tan değeri okumak için örnek => widget.meal.name denilmesi gerekmektedir.
        title: Text("${widget.meal.name} İçindekiler"),
      ),
      body: Column(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(widget.meal.imageUrl),
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
                  widget.meal.name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
                Text(
                  "İçindekiler : \n${widget.meal.ingredients}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                StarRating(
                  rating: widget.meal.rating,
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
