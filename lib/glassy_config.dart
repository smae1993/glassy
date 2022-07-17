import 'dart:ui';

import 'package:flutter/material.dart';

class GlassyConfig {
  GlassyConfig(
      {this.radius = 15,
      this.backgroundOpacity = 0.2,
      this.backgroundColor = Colors.grey,
      this.borderColor,
      this.foregroundColor = Colors.white,
      this.borderOpacity = 0.5}) {
    borderColor = borderColor ?? backgroundColor;

    borderColor = borderColor!.withOpacity(borderOpacity);
    backgroundColor = backgroundColor.withOpacity(backgroundOpacity);
  }
  double radius;
  double backgroundOpacity;
  double borderOpacity;
  Color backgroundColor;
  Color foregroundColor;
  Color? borderColor;
}
