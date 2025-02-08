import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CercalW extends StatelessWidget {
  String child;
  CercalW({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 152, 152),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            child.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
