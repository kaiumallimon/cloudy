import 'package:cloudy/app/screens/_splash_page.dart';
import 'package:flutter/material.dart';

class CloudyApp extends StatelessWidget {
  const CloudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloudy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}