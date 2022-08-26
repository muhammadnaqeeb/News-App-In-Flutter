import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news/screens/main_screen.dart';
import 'package:news/screens/network_error_screen.dart';
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
    var newsData;
    try {
      newsData = await networkHelper.getData();
    } catch (e) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NetworkErrorScreen();
      }));
      return;
    }
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return MainScreen(
        newsData: newsData,
      );
    }), ((route) => false));
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
