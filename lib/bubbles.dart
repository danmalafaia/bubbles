library bubbles;

import 'dart:ui';

import 'package:flutter/widgets.dart';

class Bubble {
  Bubble(this._color, this._radius);

  final Color _color;
  final double _radius;

  void draw(Canvas canvas, Size canvasSize) {
    final paint = Paint()
      ..color = _color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(canvasSize.width / 2, canvasSize.height / 2), _radius, paint);
  }
}

class BubblePainter extends CustomPainter {
  const BubblePainter(this._bubble);

  final Bubble _bubble;

  @override
  void paint(Canvas canvas, Size size) {
    _bubble.draw(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
