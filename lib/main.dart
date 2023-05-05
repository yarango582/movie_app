import 'package:flutter/material.dart';
import 'package:movies/screens/index.dart';
import 'package:provider/provider.dart';
import 'package:movies/providers/index.dart';

void main() => runApp(AppState());

// ignore: use_key_in_widget_constructors
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false,)],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      initialRoute: 'home',
      routes: {'home': (_) => HomeScreen(), 'details': (_) => DetailsScreen()},
      theme: ThemeData.light().copyWith(
          appBarTheme:
              const AppBarTheme(color: Colors.indigo, centerTitle: true)),
    );
  }
}
