import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff1E1E1E),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 1, color: Colors.redAccent, style: BorderStyle.solid),
            ),
            child: Container(

              padding: EdgeInsets.all(8),
              margin:
                  EdgeInsets.only(left: 90, right: 90, top: 250, bottom: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1,
                    color: Colors.redAccent,
                    style: BorderStyle.solid),
              ),
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
