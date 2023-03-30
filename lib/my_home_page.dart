import 'package:flutter/material.dart';

class _MyHomePageState extends State<MyHomePage> {
  // tady stavíme to, co je vidět na obrazovce
  @override
  Widget build(BuildContext context) {
    // zde vrátíme, co se má zobrazit
    return Center(
      child: Text("Hello World!"),
    );
  }
}

// ..
// ..
// ..
// ..
// ..
// tohle zatím není důležité
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
