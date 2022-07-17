import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassy/glassy.dart';
import 'package:glassy/glassy_config.dart';

/// Glassy Dialog
class GlassyDialog extends StatelessWidget {
  const GlassyDialog(
      {Key? key,
      required this.child,
      this.config,
      this.title,
      this.closeButton,
      this.leftBar,
      this.rightBar,
      this.size,
      this.onClose,
      this.fullScreen = false,
      this.direction = TextDirection.ltr})
      : super(key: key);
  final Size? size;
  final String? title;
  final List<Widget>? leftBar;
  final List<Widget>? rightBar;
  final bool? closeButton;
  final Widget child;
  final bool fullScreen;
  final TextDirection direction;
  final GlassyConfig? config;

  final Function()? onClose;

  Size dialogSize(BuildContext context) {
    if (size != null) {
      return size!;
    } else {
      return Size(min(MediaQuery.of(context).size.width * 0.95, 400),
          min(MediaQuery.of(context).size.width * 0.95, 400));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Directionality(
          textDirection: TextDirection.rtl,
          child: OrientationBuilder(
            builder: (context, orientation) {
              return Dialog(
                insetPadding: fullScreen
                    ? EdgeInsets.zero
                    : const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 24.0),
                backgroundColor: (config ?? glassyConfig).backgroundColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: (config ?? glassyConfig).borderColor!),
                  borderRadius: BorderRadius.circular(
                      fullScreen ? 0 : (config ?? glassyConfig).radius),
                ),
                child: Container(
                  width: dialogSize(context).width,
                  height: dialogSize(context).height == 0
                      ? null
                      : dialogSize(context).height,
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          if (closeButton == null || closeButton == true)
                            IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: (config ?? glassyConfig).foregroundColor,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                if (onClose != null) {
                                  onClose!();
                                }
                              },
                            ),
                          if (rightBar != null)
                            Row(
                              children: rightBar!,
                            ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  title == null ? " " : title!,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: (config ?? glassyConfig)
                                          .foregroundColor),
                                ),
                              ),
                            ),
                          ),
                          if (leftBar != null)
                            Row(
                              children: leftBar!,
                            ),
                        ],
                      ),
                      Expanded(child: child)
                    ],
                  ),
                ),
              );
            },
          )),
    ));
  }
}
