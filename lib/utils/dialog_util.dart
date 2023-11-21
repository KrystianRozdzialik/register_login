import 'package:flutter/material.dart';
import 'package:register_login/widgets/auth/auth_wrapper.dart';

abstract class DialogUtil {
  static openLoginPopup(BuildContext context, {bool dismissible=true}) {
    showDialog(context: context,
        barrierDismissible: dismissible,
        builder: (context)=> WillPopScope(
          onWillPop: ()async => dismissible,
              child: const Dialog(insetPadding: EdgeInsets.all(10),
                backgroundColor: Colors.transparent, child: AuthWrapper()
              ),
            ));
  }
}