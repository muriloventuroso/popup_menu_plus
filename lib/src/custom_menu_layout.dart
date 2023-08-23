import 'package:flutter/material.dart';
import 'package:popup_menu_plus/src/menu_layout.dart';

import 'popup_menu.dart';

/// list menu layout
class CustomMenuLayout implements MenuLayout {
  final MenuConfig config;
  final Widget content;
  final VoidCallback onDismiss;
  final BuildContext context;

  CustomMenuLayout({
    required this.config,
    required this.content,
    required this.onDismiss,
    required this.context,
  });

  @override
  Widget build() {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: config.borderRadius ?? BorderRadius.zero,
        child: GestureDetector(
          onTap: () {
            onDismiss();
          },
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: config.backgroundColor,
              border: config.border != null
                  ? Border.all(
                      color: config.border!.color,
                      width: config.border!.width,
                    )
                  : null,
              borderRadius: config.borderRadius,
            ),
            child: content,
          ),
        ),
      ),
    );
  }

  @override
  double get height => config.itemHeight;

  @override
  double get width => config.itemWidth;
}
