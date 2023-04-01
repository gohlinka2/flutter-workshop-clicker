import 'package:flutter/material.dart';

/// Čudlík, který vyplní co nejvíce místa. Jako pozadí má danou barvu.
/// Uprostřed má text.
class BigButton extends StatelessWidget {
  const BigButton(
      {super.key,
      required this.text,
      required this.onClick,
      required this.color});

  final String text;
  final void Function() onClick;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onClick,
        child: Ink(
          color: color,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
