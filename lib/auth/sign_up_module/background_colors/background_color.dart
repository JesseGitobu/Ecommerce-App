import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width * 0.5000000, 0),
        Offset(size.width * 0.5000000, size.height), [
      Color(0xffF51417).withOpacity(1),
      Color(0xffC80D04).withOpacity(0.122067),
      Color(0xffC20C01).withOpacity(0)
    ], [
      0,
      0.877933,
      1
    ]);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * 0.2764579),
        Offset(size.width * 0.5000000, size.height), [
      Color(0xffD9D9D9).withOpacity(0),
      Color(0xff0F4834).withOpacity(1),
      Color(0xff144C39).withOpacity(0.974359)
    ], [
      0,
      0.666667,
      1
    ]);
    canvas.drawRect(
        Rect.fromLTWH(
            0, size.height * 0.2764579, size.width, size.height * 0.7235421),
        paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
