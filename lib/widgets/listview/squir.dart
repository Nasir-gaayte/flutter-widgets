import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SquirW extends StatelessWidget {
  String child;
  SquirW({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 182, 241),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          child.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        )),
      ),
    );
  }
}
