import 'package:flutter/material.dart';

class AppGradients {
  splashGradient({
    AlignmentGeometry begin= Alignment.topCenter, AlignmentGeometry end= Alignment.bottomLeft
  }) => LinearGradient(
    colors: [Color(0xFF3C6FD1), Color(0xFF3C6FD1), Color(0xFF7CA9FF)],
    stops: [0, 0, 1],
    begin: begin,
    end: end,
  );
}
