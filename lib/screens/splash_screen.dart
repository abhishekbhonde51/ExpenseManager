import 'package:flutter/material.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  height: 144,
                  width: 144,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromRGBO(234, 238, 235, 1)),
                  child: Center(
                      child: Image.asset(
                    'Assets/splash.png',
                    width: 69,
                    height: 59,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
