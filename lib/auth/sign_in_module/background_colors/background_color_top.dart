import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.3062624);
    path_0.cubicTo(
        size.width,
        size.height * 0.3062624,
        size.width * 0.9345794,
        size.height * 0.4538367,
        size.width * 0.8177570,
        size.height * 0.5585685);
    path_0.cubicTo(
        size.width * 0.7009346,
        size.height * 0.6633003,
        size.width * 0.7207944,
        size.height * 0.6079009,
        size.width * 0.5502336,
        size.height * 0.6997988);
    path_0.cubicTo(
        size.width * 0.3796729,
        size.height * 0.7916968,
        size.width * 0.3750000,
        size.height * 0.8188134,
        size.width * 0.2827103,
        size.height * 0.9251312);
    path_0.cubicTo(size.width * 0.1904206, size.height * 1.031449, 0,
        size.height * 0.9933644, 0, size.height * 0.9933644);
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, 0),
        Offset(size.width * 0.5000000, size.height),
        [Color(0xffC20C01).withOpacity(1), Color(0xffE62902).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
