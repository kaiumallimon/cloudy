import 'package:cloudy/core/assets/_assets.dart';
import 'package:cloudy/core/theming/_gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenWeatherWidgetCard extends StatelessWidget {
  const HomeScreenWeatherWidgetCard({
    super.key,
    required this.contentWidth,
  });

  final double contentWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(30),
      width: contentWidth * .9,
      height: 220,
      decoration: BoxDecoration(
        gradient: AppGradients().splashGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chance of rain 60%',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade100,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
    
                    SizedBox(height: 5),
    
                    Text(
                      'Partly Cloudy',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
    
              Image.asset(
                AppAssets.partlyCloudy,
                width: 60,
                height: 60,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                AppAssets.locationIcon,
                width: 20,
                height: 20,
              ),
              const SizedBox(width: 10),
              Text(
                'Washington DC, USA',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
    
          const SizedBox(height: 20),
    
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                  children: [
                    TextSpan(
                      text: '25\u00B0',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
    
                    TextSpan(
                      text: 'C',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
    
              Expanded(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('assets/svgs/Group 34.svg'),
                    SvgPicture.asset('assets/svgs/Frame 9.svg'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

