import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  login(){

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'register_login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(child: InkWell(onTap: login, child: const Text("Login")),),
        appBar: AppBar(title: const Text("data")),
    ));
  }
}