import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassy/glassy.dart';
import 'package:glassy/glassy_config.dart';

/// a card that has glass effects
class GlassyCard extends StatelessWidget {
  const GlassyCard({required this.child, this.config, super.key});

  /// a widget that placed as child of card
  final Widget child;

  /// optional configuration of glass effect
  final GlassyConfig? config;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: (config ?? glassyConfig).backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1, color: (config ?? glassyConfig).borderColor!),
          borderRadius: BorderRadius.circular((config ?? glassyConfig).radius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
              Radius.circular((config ?? glassyConfig).radius)),
          child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: child),
        ));
  }
}
