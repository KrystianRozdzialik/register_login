import 'package:flutter/material.dart';
import 'package:register_login/constans/colors.dart';

class AuthCurve extends StatelessWidget {
  const AuthCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: AuthPainter(),
          size: const Size(double.infinity, 200),
        ),
        Align(
          alignment: Alignment.topRight,
          child: RawMaterialButton(onPressed: () => Navigator.of(context).pop(),
            constraints: BoxConstraints.tight(const Size(22, 22)),
            fillColor: Colors.white, shape: const CircleBorder(),
          child: const Icon(Icons.close, size: 20, color: themeColorDarkest,),),
        )
      ],
    );
  }
}

class AuthPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var controlPoint = Offset(size.width / 2, size.height / 2.5);
    var controlPoint2 = Offset(size.width*1.05, size.height /1.3);
    var endPoint = Offset(size.width/1.05, size.height);
    Path path = Path()
      ..lineTo(size.width, 0)
      ..cubicTo(controlPoint.dx, controlPoint.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..lineTo(0, size.height)
      ..close();
    var paint1 = Paint()..color = themeColorLightest;
    canvas.drawPath(path, paint1);

    var controlPoint3 = Offset(size.width / 3, size.height / 2);
    var controlPoint4 = Offset(size.width*1.01, size.height /1.3);
    var endPoint2 = Offset(size.width/1.3, size.height);
    Path path2 = Path()
      ..lineTo(size.width/1.03, 0)
      ..cubicTo(controlPoint3.dx, controlPoint3.dy, controlPoint4.dx,
          controlPoint4.dy, endPoint2.dx, endPoint2.dy)
      ..lineTo(0, size.height)
      ..close();
    var paint2 = Paint()..color = themeColorDarkest;
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class AuthPainterMobile extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var controlPoint = Offset(size.width / 2.5, size.height / 2);
    var controlPoint2 = Offset(size.width / 1.3, size.height * 1.05);
    var endPoint = Offset(size.width, size.height / 1.05);
    Path path = Path()
      ..lineTo(0, size.height / 1.3)
      ..cubicTo(controlPoint.dx, controlPoint.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();
    var paint1 = Paint()..color = themeColorLightest;
    canvas.drawPath(path, paint1);

    var controlPoint3 = Offset(size.width / 2, size.height / 3);
    var controlPoint4 = Offset(size.width / 1.3, size.height * 1.01);
    var endPoint2 = Offset(size.width, size.height / 1.3);
    Path path2 = Path()
      ..lineTo(0, size.height / 1.35)
      ..cubicTo(controlPoint3.dx, controlPoint3.dy, controlPoint4.dx,
          controlPoint4.dy, endPoint2.dx, endPoint2.dy)
      ..lineTo(size.width, 0)
      ..close();
    var paint2 = Paint()..color = themeColorDarkest;
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class AuthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 1.3);
    var controlPoint = Offset(size.width / 2.5, size.height / 2);
    var controlPoint2 = Offset(size.width / 1.3, size.height * 1.05);
    var endPoint = Offset(size.width, size.height / 1.05);
    path.cubicTo(controlPoint.dx, controlPoint.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
