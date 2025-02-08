import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/listview/cercal.dart';
import 'package:flutter_widget/widgets/listview/squir.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  List squir = [
    'squir 1',
    'squir 2',
    'squir 3',
    'squir 4',
    'squir 5',
    'squir 6',
  ];
  List cercal = [
    'cercal 1',
    'cercal 2',
    'cercal 3',
    'cercal 4',
    'cercal 5',
    'cercal 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cercal.length,
            itemBuilder: (context, index) {
              return CercalW(child: cercal[index]);
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: squir.length,
            itemBuilder: (context, index) {
              return SquirW(child: squir[index]);
            },
          ),
        ),
      ],
    );
  }
}
