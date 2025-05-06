import 'package:cloudy/app/widgets/_home_weather_card.dart';
import 'package:cloudy/app/widgets/_custom_asset_button.dart';
import 'package:cloudy/core/assets/_assets.dart';
import 'package:cloudy/core/theming/_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      );
    });

    double width = MediaQuery.of(context).size.width;
    double contentWidth = width - 40;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top bar
            homeTopRow(),

            // weather card: [Horizontally scrollable]
            Container(
              height: 220,
              padding: EdgeInsets.symmetric(horizontal: 20),

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return HomeScreenWeatherWidgetCard(contentWidth: contentWidth);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding homeTopRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        children: [
          CustomAssetButton(assetPath: AppAssets.menuIcon, onTap: () {}),
          Expanded(
            child: Center(
              child: Text(
                'Berlin, Germany',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          CustomAssetButton(assetPath: AppAssets.searchIcon, onTap: () {}),
        ],
      ),
    );
  }
}

