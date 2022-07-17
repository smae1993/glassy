import 'package:flutter/material.dart';

/// Glass Configuration that can determines configs of all glassy widgets
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

  /// the radius of all glassy widgets in px
  /// default value is "15"
  double radius;

  /// the opacity of background of all glassy widgets
  /// default value is "0.5"
  double backgroundOpacity;

  /// the opacity of border of all glassy widgets
  /// default value is "0.5"
  double borderOpacity;

  /// the color of background of all glassy widgets
  /// default value is "Colors.grey"
  Color backgroundColor;

  /// the color of foreground of all glassy widgets
  /// default value is "Colors.white"
  Color foregroundColor;

  /// the color of border of all glassy widgets
  /// default value is "Colors.grey"
  Color? borderColor;
}
