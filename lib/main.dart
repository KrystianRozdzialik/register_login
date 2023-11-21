import 'package:flutter/material.dart';
import 'package:register_login/utils/dialog_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  login(BuildContext context){
    DialogUtil.openLoginPopup(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'register_login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: InkWell(
                onTap: () => login(context), child: const Text("Login")),),
          appBar: AppBar(title: const Text("data")),
            ),
      ));
  }
}