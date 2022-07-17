import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassy/glassy.dart';
import 'package:glassy/glassy_config.dart';

/// Glassy Button
class GlassyButton extends StatelessWidget {
  const GlassyButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.config,
      this.padding = const EdgeInsets.all(15)})
      : super(key: key);
  final VoidCallback? onPressed;
  final Widget child;
  final EdgeInsets padding;
  final GlassyConfig? config;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.all(Radius.circular((config ?? glassyConfig).radius)),
      child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: padding,
                backgroundColor: (config ?? glassyConfig).backgroundColor,
                foregroundColor: (config ?? glassyConfig).foregroundColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: (config ?? glassyConfig).borderColor!),
                  borderRadius:
                      BorderRadius.circular((config ?? glassyConfig).radius),
                ),
              ),
              onPressed: onPressed,
              child: child)),
    );
  }
}
