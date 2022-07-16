import 'package:flutter/material.dart';

class GlassyButton extends StatelessWidget {
  const GlassyButton({Key? key, required this.onPressed, required this.child})
      : super(key: key);
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: child);
  }
}
