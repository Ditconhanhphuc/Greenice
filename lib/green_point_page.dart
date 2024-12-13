import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreenPointPage extends StatelessWidget {
  const GreenPointPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7CB98D),
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: PathwayPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

class PathwayPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    final path = Path()
      ..moveTo(size.width * 0.8, size.height * 0.9)
      ..quadraticBezierTo(size.width * 0.2, size.height * 0.9,
          size.width * 0.15, size.height * 0.8)
      ..quadraticBezierTo(
        size.width * 0.15,
        size.height * 0.65,
        size.width * 0.7,
        size.height * 0.6,
      )
      ..quadraticBezierTo(
        size.width,
        size.height * 0.5,
        size.width * 0.5,
        size.height * 0.45,
      )
      ..quadraticBezierTo(
        0,
        size.height * 0.4,
        size.width * 0.4,
        size.height * 0.27,
      )
      ..quadraticBezierTo(
        size.width * 1.2,
        size.height * 0.2,
        size.width * 0.3,
        0,
      );

    final dashedPath = _createDashedPath(path, 20);
    canvas.drawPath(dashedPath, paint);
    final circlePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;
    final circlePaint2 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;

    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    final circlePositions = [
      Offset(size.width * 0.8, size.height * 0.9),
      Offset(size.width * 0.15, size.height * 0.8),
      Offset(size.width * 0.7, size.height * 0.6),
      Offset(size.width * 0.5, size.height * 0.45),
      Offset(size.width * 0.4, size.height * 0.27),
      Offset(size.width * 0.77, size.height * 0.17),
    ];

    final numbers = [10, 20, 40, 80, 100, 120, 140];

    for (int i = 0; i < circlePositions.length; i++) {
      canvas.drawOval(
          Rect.fromCenter(center: circlePositions[i], width: 80, height: 60),
          circlePaint);
      canvas.drawOval(
          Rect.fromCenter(
            center: Offset(circlePositions[i].dx, circlePositions[i].dy - 5),
            width: 70,
            height: 55,
          ),
          circlePaint2);

      // Draw text
      textPainter.text = TextSpan(
        text: '${numbers[i]}',
        style: TextStyle(
          color: Colors.white,
          fontFamily: GoogleFonts.spicyRice().fontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 40,
        ),
      );
      textPainter.layout(minWidth: 0, maxWidth: 100);
      textPainter.paint(
        canvas,
        circlePositions[i] -
            Offset(textPainter.width / 2, textPainter.height / 2 + 5),
      );
    }
  }

  Path _createDashedPath(Path originalPath, double dashLength) {
    final Path dashedPath = Path();
    final PathMetrics pathMetrics = originalPath.computeMetrics();

    for (final PathMetric pathMetric in pathMetrics) {
      double distance = 0.0;
      while (distance < pathMetric.length) {
        final double nextDistance = distance + dashLength;
        final Path extractPath = pathMetric.extractPath(
          distance,
          nextDistance,
          startWithMoveTo: true,
        );
        dashedPath.addPath(extractPath, Offset.zero);
        distance = nextDistance + dashLength;
      }
    }

    return dashedPath;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
