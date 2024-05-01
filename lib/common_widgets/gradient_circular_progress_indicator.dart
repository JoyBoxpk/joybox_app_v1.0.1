import 'package:flutter/material.dart';

class GradientCircularProgressIndicator extends StatelessWidget {
  final double strokeWidth;
  final double value;
  final Color backgroundColor;
  final Gradient gradient;
  final double height;
  final Widget centerWidget; // Widget to be displayed at the center

  GradientCircularProgressIndicator({
    required this.strokeWidth,
    required this.value,
    this.backgroundColor = Colors.grey,
    required this.gradient,
    this.height = 100.0,
    required this.centerWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      child: Stack(
        children: [
          CustomPaint(
            size: Size.square(height),
            painter: _GradientCircularProgressPainter(
              strokeWidth: strokeWidth,
              value: value,
              backgroundColor: backgroundColor,
              gradient: gradient,
            ),
          ),
          Center(
            child: centerWidget,
          ),
        ],
      ),
    );
  }
}

class _GradientCircularProgressPainter extends CustomPainter {
  final double strokeWidth;
  final double value;
  final Color backgroundColor;
  final Gradient gradient;

  _GradientCircularProgressPainter({
    required this.strokeWidth,
    required this.value,
    required this.backgroundColor,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..color = backgroundColor;

    double radius = (size.width - strokeWidth) / 2;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint,
    );

    paint.shader = gradient.createShader(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: radius,
      ),
    );

    double arcAngle = 2 * 3.14 * (value ?? 0.0);
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: radius,
      ),
      -3.14 / 2,
      arcAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
