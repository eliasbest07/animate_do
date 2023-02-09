import 'package:flutter/material.dart';
import 'package:login_anime_do/screens/homescreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppLogin animate_do v3.0.2 ', //Titulo
      initialRoute: 'home', // inicial rutas y screens.dart
      routes: {
        'home': (_) => const HomeScreen(),
      },
    );
  }
}
