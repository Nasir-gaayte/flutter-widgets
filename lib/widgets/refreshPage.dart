import 'dart:math';

import 'package:flutter/material.dart';

class RefreshPage extends StatefulWidget {
  const RefreshPage({super.key});

  @override
  State<RefreshPage> createState() => _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {
  List items = List.generate(10, (index) => 'item ${index + 1}');
  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
    List<String> i = ['one', 'two', 'three'];
    String rendom = i[Random().nextInt(i.length)];

    items = [];
    items.addAll(List<String>.generate(10, (index) => '$rendom ${index + 1}'));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Colors.red,
      displacement: 10,
      semanticsLabel: 'refresh',
      backgroundColor: Colors.yellow,
      strokeWidth: 1,
      triggerMode: RefreshIndicatorTriggerMode.onEdge,
      onRefresh: refreshData,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
