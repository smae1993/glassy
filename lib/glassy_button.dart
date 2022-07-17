import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassy/glassy.dart';
import 'package:glassy/glassy_config.dart';

/// A Glassy Button that make a glass effect on elevated buttons
/// it can used withount GlassyConfig but is better to use with configs
class GlassyButton extends StatelessWidget {
  /// required params:
  ///   - a widget named child
  ///   - a void callback function named onPressed
  const GlassyButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.config,
      this.padding = const EdgeInsets.all(15)})
      : super(key: key);

  /// The Callback Function named onPressed
  final VoidCallback? onPressed;

  /// The Child Widget Named child
  final Widget child;

  /// optional padding property
  final EdgeInsets padding;

  /// optional GlassyConfig property
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
