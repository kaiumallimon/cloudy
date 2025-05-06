import 'package:cloudy/app/providers/_splash_provider.dart';
import 'package:cloudy/core/assets/_assets.dart';
import 'package:cloudy/core/theming/_colors.dart';
import 'package:cloudy/core/theming/_gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SplashProvider>().goToHomePage(context);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients().splashGradient()),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(width: 120, height: 118, AppAssets.splashIcon),
              const SizedBox(height: 15),
              Text(
                'Cloudy',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Dont worry about \nthe weather we all here",

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: AppColors.lightGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
