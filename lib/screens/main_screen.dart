import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news/screens/discover_screen.dart';
import 'package:news/screens/home_screen.dart';

dynamic _data;

class MainScreen extends StatefulWidget {
  static const routeName = '/MainScreen';
  final newsData;
  const MainScreen({Key? key, this.newsData}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int c_index = 0;

  @override
  void initState() {
    _data = widget.newsData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(newsData: _data),
      DiscoverScreen(newsData: _data),
    ];
    return Scaffold(
        body: screens[c_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: c_index,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withAlpha(100),
          onTap: ((value) {
            setState(() {
              c_index = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(left: 50),
                child: const Icon(
                  (Icons.home),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon((Icons.search)),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(right: 50),
                child: IconButton(
                  onPressed: () {
                    // print('No profile for now');
                  },
                  icon: const Icon(Icons.person),
                ),
              ),
              label: 'Person',
            ),
          ],
        ));
  }
}
