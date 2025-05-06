import 'package:cloudy/app/screens/_home_page.dart';
import 'package:flutter/material.dart';

class SplashProvider extends ChangeNotifier{
  Future<void> goToHomePage(BuildContext context) async{
    await Future.delayed(const Duration(seconds: 2));
    
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
  }
}