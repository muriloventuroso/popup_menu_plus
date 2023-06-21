import 'package:flutter/material.dart';
import 'package:popup_menu_plus/src/popup_menu.dart';

import 'menu_item.dart';

class MenuItemWidget extends StatefulWidget {
  final PopUpMenuItemProvider item;
  final bool showLine;
  final Color lineColor;
  final Color backgroundColor;
  final Color highlightColor;
  final double itemWidth;
  final double itemHeight;

  final Function(PopUpMenuItemProvider item)? clickCallback;

  const MenuItemWidget({
    super.key,
    this.itemWidth = 72.0,
    this.itemHeight = 65.0,
    required this.item,
    this.showLine = false,
    this.clickCallback,
    required this.lineColor,
    required this.backgroundColor,
    required this.highlightColor,
  });

  @override
  State<StatefulWidget> createState() {
    return _MenuItemWidgetState();
  }
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  var highlightColor = const Color(0x55000000);
  var color = const Color(0xff232323);

  @override
  void initState() {
    color = widget.backgroundColor;
    highlightColor = widget.highlightColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        color = highlightColor;
        setState(() {});
      },
      onTapUp: (details) {
        color = widget.backgroundColor;
        setState(() {});
      },
      onLongPressEnd: (details) {
        color = widget.backgroundColor;
        setState(() {});
      },
      onTap: () {
        if (widget.clickCallback != null) {
          widget.clickCallback!(widget.item);
        }
      },
      child: Container(
          width: widget.itemWidth,
          height: widget.itemHeight,
          decoration: BoxDecoration(
              color: color,
              border: Border(
                  right: BorderSide(
                      color: widget.showLine
                          ? widget.lineColor
                          : Colors.transparent))),
          child: _createContent()),
    );
  }

  Widget _createContent() {
    if (widget.item.menuImage != null) {
      // image and text
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30.0,
            height: 30.0,
            child: widget.item.menuImage,
          ),
          SizedBox(
            height: 22.0,
            child: Material(
              color: Colors.transparent,
              child: Text(
                widget.item.menuTitle,
                style: widget.item.menuTextStyle,
              ),
            ),
          )
        ],
      );
    } else {
      // only text
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Text(
            widget.item.menuTitle,
            style: widget.item.menuTextStyle,
            textAlign: widget.item.menuTextAlign,
          ),
        ),
      );
    }
  }
}
