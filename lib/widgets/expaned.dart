import 'package:flutter/material.dart';

class ExpanedW extends StatelessWidget {
  const ExpanedW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.yellow,
                )),
                Expanded(
                    child: Container(
                  color: Colors.green,
                )),
              ],
            )),
        Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.yellow,
                )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                )),
              ],
            ))
      ],
    );
  }
}
