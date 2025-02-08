import 'package:flutter/material.dart';

class MediaQPage extends StatelessWidget {
  const MediaQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'height: ${MediaQuery.of(context).size.height}',
            style: const TextStyle(fontSize: 31),
          ),
          Text(
            'width: ${MediaQuery.of(context).size.width}',
            style: const TextStyle(fontSize: 31),
          ),
          Text(
            'aspectRaio: ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 31),
          ),
          Text(
            '${MediaQuery.of(context).orientation}',
            style: const TextStyle(fontSize: 31),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
