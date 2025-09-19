import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:chat_gpt/screens/chat_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/spider_slaspscreen.png",fit:BoxFit.contain),
      ],
    ),
    nextScreen: Chartscreen(),
    splashIconSize:300,
    duration: 3000,
    backgroundColor:Colors.black ,
    

    );

  }
}