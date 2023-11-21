import 'package:flutter/material.dart';
import 'package:register_login/widgets/auth/auth_curve.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [AuthCurve()],
    ),);
  }
}
