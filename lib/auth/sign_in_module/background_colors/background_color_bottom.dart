import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class BottomColorBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.6937405);
    path_0.cubicTo(
        0,
        size.height * 0.6937405,
        size.width * 0.06542056,
        size.height * 0.5461641,
        size.width * 0.1822430,
        size.height * 0.4414313);
    path_0.cubicTo(
        size.width * 0.2990654,
        size.height * 0.3366989,
        size.width * 0.2792056,
        size.height * 0.3920992,
        size.width * 0.4497664,
        size.height * 0.3002011);
    path_0.cubicTo(
        size.width * 0.6203271,
        size.height * 0.2083027,
        size.width * 0.6250000,
        size.height * 0.1811878,
        size.width * 0.7172897,
        size.height * 0.07486908);
    path_0.cubicTo(
        size.width * 0.8095794,
        size.height * -0.03144943,
        size.width,
        size.height * 0.006634885,
        size.width,
        size.height * 0.006634885);
    path_0.lineTo(size.width, size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height),
        Offset(size.width * 0.5000000, 0),
        [Color(0xff083A29).withOpacity(1), Color(0xff155841).withOpacity(0.47)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
