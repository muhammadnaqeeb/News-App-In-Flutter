import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/screens/main_screen.dart';
import '../services/networking.dart';

class LoadingScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getNewsData();
    super.initState();
  }

  void getNewsData() async {
    NetworkHelper networkHelper = NetworkHelper();
    var newsData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return MainScreen(
          newsData: newsData,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitChasingDots(color: Colors.black, size: 70),
      ),
    );
  }
}
