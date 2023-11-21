import 'package:flutter/material.dart';

abstract class DialogUtil {
  static openLoginPopup(BuildContext context) {
    showDialog(context: context,
        builder: (context)=>
            Dialog(insetPadding: const EdgeInsets.all(10),
              backgroundColor: Colors.transparent, child: Container(height: 200,
              width: 200, color: Colors.orangeAccent,),));
  }
}