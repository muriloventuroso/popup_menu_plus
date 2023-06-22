import 'package:flutter/material.dart';
import 'package:popup_menu_plus/src/menu_config.dart';

class TrianglePainter extends CustomPainter {
  bool isDown;
  Color color;
  BorderConfig? border;

  TrianglePainter(
      {this.isDown = true,
      this.color = const Color.fromARGB(0, 0, 0, 0),
      this.border});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 2.0;
    paint.color = color;
    paint.style = PaintingStyle.fill;

    Path path = Path();
    if (isDown) {
      path.moveTo(0, (border?.width ?? 0) * -1);
      path.lineTo(size.width, ((border?.width ?? 0)) * -1);
      path.lineTo(size.width / 2.0, size.height);
    } else {
      path.moveTo(size.width / 2.0, 0);
      path.lineTo(0.0, size.height + (border?.width ?? 0));
      path.lineTo(size.width, size.height + (border?.width ?? 0));
    }

    canvas.drawPath(path, paint);
    if (border != null) {
      Paint borderPaint = Paint();
      borderPaint.strokeWidth = border!.width;
      borderPaint.strokeCap = StrokeCap.round;
      borderPaint.color = border!.color;
      borderPaint.style = PaintingStyle.stroke;

      Path path2 = Path();
      if (isDown) {
        path2.moveTo(0.0, (border?.width ?? 0) * -0.05);
        path2.lineTo(size.width / 2.0, size.height);
        path2.moveTo(size.width, (border?.width ?? 0) * -0.05);
        path2.lineTo(size.width / 2.0, size.height);
      } else {
        path2.moveTo(size.width / 2.0, 0.0);
        path2.lineTo(0.0, size.height);
        path2.moveTo(size.width / 2.0, 0.0);
        path2.lineTo(size.width, size.height);
      }

      canvas.drawPath(path2, borderPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
