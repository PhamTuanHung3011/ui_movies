



import 'package:flutter/material.dart';
import 'package:ui_movies/screen/home_screen.dart';
import 'package:ui_movies/screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: HomeScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SplashScreen.routeName,);
          }, child: Text('Go to Splash!'),
        ),
      ),
    );
  }
}
