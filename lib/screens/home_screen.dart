import 'package:flutter/material.dart';
import 'package:movies/providers/index.dart';
import 'package:movies/widgets/index.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Peliculas en cines'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () => {}, icon: const Icon(Icons.search_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// `CardSwiper()` is a custom widget that displays a horizontal list of movie posters in a
              /// card format that can be swiped left or right.
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              /// `MovieSlider()` is a custom widget that displays a horizontal list of movie posters with
              /// their titles and ratings. It allows the user to scroll through the list to see more
              /// movies.
              MovieSlider(
                  movies: moviesProvider.popularMovies,
                  title: 'Populares',
                  onNextPage: () => moviesProvider.getPopularMovies()),
            ],
          ),
        ));
  }
}
