import 'package:cloudy/app/_app.dart';
import 'package:cloudy/app/providers/_splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SplashProvider())],
      child: CloudyApp(),
    ),
  );
}
