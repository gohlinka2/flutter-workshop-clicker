import 'package:flutter/material.dart';

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final int _toWin = 10;

  void increment() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void decrement() {
    setState(() {
      _counter = _counter + -1;
    });
  }

  void reset() {
    setState(() {
      _counter = 0;
    });
  }

  // tady stavíme to, co je vidět na obrazovce
  @override
  Widget build(BuildContext context) {
    // zde vrátíme, co se má zobrazit
    Widget widget;
    if (_counter <= -_toWin) {
      widget = buildEnd();
    } else if (_counter >= _toWin) {
      widget = buildEnd();
    } else {
      widget = buildGame();
    }
    return widget;
  }

  Widget buildEnd() {
    String text;
    if (_counter <= -_toWin) {
      text = "Vyhrál záporák!";
    } else {
      text = "Vyhrál klaďas!";
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              reset();
            },
            child: Text("Znovu"),
          )
        ],
      ),
    );
  }

  Widget buildGame() {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: ElevatedButton(
              child: Text("Klikej, klaďasi!"),
              onPressed: () {
                increment();
              },
            ),
          ),
          Text(
            _counter.toString(),
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Expanded(
            child: ElevatedButton(
              child: Text("Klikej, záporáku!"),
              onPressed: () {
                decrement();
              },
            ),
          ),
        ],
      ),
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
