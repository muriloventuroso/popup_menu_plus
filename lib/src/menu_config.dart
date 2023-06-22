import 'package:flutter/material.dart';
import 'package:popup_menu_plus/src/popup_menu.dart';

class BorderConfig {
  final Color color;
  final double width;

  BorderConfig({
    this.color = const Color(0xFF000000),
    this.width = 1.0,
  });
}

class MenuConfig {
  final MenuType type;

  final double itemWidth;

  final double itemHeight;

  final double arrowHeight;

  final int maxColumn;

  final Color backgroundColor;

  final Color highlightColor;

  final Color lineColor;

  final BorderConfig? border;

  final BorderRadiusGeometry? borderRadius;

  const MenuConfig(
      {this.type = MenuType.grid,
      this.itemWidth = 72.0,
      this.itemHeight = 65.0,
      this.arrowHeight = 10.0,
      this.maxColumn = 4,
      this.backgroundColor = const Color(0xff232323),
      this.highlightColor = const Color(0xff353535),
      this.lineColor = const Color(0x55000000),
      this.border,
      this.borderRadius = const BorderRadius.all(Radius.circular(10.0))});

  factory MenuConfig.forList({
    double itemWidth = 120.0,
    double itemHeight = 40.0,
    double arrowHeight = 10.0,
    Color backgroundColor = Colors.white,
    Color highlightColor = const Color(0xff353535),
    Color lineColor = const Color(0x55000000),
    BorderConfig? border,
    BorderRadiusGeometry? borderRadius,
  }) {
    return MenuConfig(
      type: MenuType.list,
      itemWidth: itemWidth,
      itemHeight: itemHeight,
      arrowHeight: arrowHeight,
      backgroundColor: backgroundColor,
      highlightColor: highlightColor,
      lineColor: lineColor,
      border: border,
      borderRadius: borderRadius,
    );
  }
}
