import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAssetButton extends StatelessWidget {
  const CustomAssetButton({
    super.key,
    required this.assetPath,
    this.width = 24,
    this.height = 24,
    this.onTap,
  });

  final String assetPath;
  final double width;
  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(assetPath, width: width, height: height),
      ),
    );
  }
}
