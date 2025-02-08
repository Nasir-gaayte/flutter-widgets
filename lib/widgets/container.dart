import 'package:flutter/material.dart';

class ContainerW extends StatelessWidget {
  const ContainerW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 5),
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(10, 10),
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 70, 65, 65),
                  blurRadius: 10,
                  offset: Offset(10, 10),
                  spreadRadius: 1.0,
                ),
              ]),
          child: const Text("Container"),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          width: 200,
          alignment: const Alignment(0.5, 0.7),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300, width: 5),
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 15,
                  offset: const Offset(10, 10),
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 15,
                  offset: const Offset(10, 10),
                )
              ]),
          child: const Icon(
            Icons.star,
            color: Colors.lightBlue,
          ),
        ),
      ],
    );
  }
}
