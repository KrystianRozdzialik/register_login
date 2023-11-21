import 'package:flutter/material.dart';
import 'package:register_login/utils/dialog_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'register_login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () => DialogUtil.openLoginPopup(context, dismissible: false), child: const Text("Login")),),
      appBar: AppBar(title: const Text("data")),
    );
  }
}
