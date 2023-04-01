import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clicker',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const Scaffold(
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    );
  }
}