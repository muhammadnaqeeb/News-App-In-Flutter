import 'package:flutter/material.dart';
import 'package:news/screens/articals_screen.dart';
import 'package:news/screens/loading_screen.dart';
import 'package:news/screens/main_screen.dart';

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
        MainScreen.routeName: (context) => const MainScreen(),
        //HomeScreen.routeName: (context) => HomeScreen(),
        //DiscoverScreen.routeName: (context) => const DiscoverScreen(),
        ArticalsScreen.routeName: (context) => const ArticalsScreen(),
      },
    );
  }
}
