import 'package:flutter/material.dart';
import 'package:register_login/constans/colors.dart';
import 'package:register_login/widgets/auth/auth_curve.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: const[
        AuthCurve(),
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errorThemeColor),
          borderRadius: BorderRadius.all(Radius.circular(20))),

            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: errorThemeColor),
                borderRadius: BorderRadius.all(Radius.circular(20))),

            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: themeColorDarkest),
            //     borderRadius: BorderRadius.all(Radius.circular(20))),

        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: errorThemeColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20))),

        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(20))),
            hintText: "Username",
            prefixIcon: Icon(Icons.person, color: themeColorDarkest,)

          ),
        ),
        TextField(),
      ],
    ),);
  }
}
