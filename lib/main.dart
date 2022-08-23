import 'package:flutter/material.dart';
import 'package:news/screens/articals_screen.dart';
import 'package:news/screens/discover_screen.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        LoadingScreen.routeName: (context) => LoadingScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticalsScreen.routeName: (context) => const ArticalsScreen(),
      },
    );
  }
}
