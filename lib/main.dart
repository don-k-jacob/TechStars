import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:park_here/providers/walkthrough_provider.dart';
import 'package:park_here/router.dart';
import 'package:park_here/styles/theme_data.dart';
import 'dart:async';
void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => WalkthroughProvider(),
  child: MaterialApp(
    home: new SplashScreen(),
    debugShowCheckedModeBanner: false,
    onGenerateRoute: onGenerateRoute,
    theme: ThemeScheme.dark(),
    initialRoute: WalkthroughRoute,
 ), ),);
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[600],
      body: new Center(
        child: new Image.asset('assets/images/bg0.png'),
      ),
    );
  }
}