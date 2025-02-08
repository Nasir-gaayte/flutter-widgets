import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  void _showDailog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('AlertDialog'),
        actions: [
          TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              label: const Text('Ok'),
              icon: const Icon(Icons.check)),
          TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              label: const Text('Cancel'),
              icon: const Icon(Icons.cancel)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100],
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
          child: ElevatedButton.icon(
              onPressed: _showDailog,
              label: const Text("Show Alert"),
              icon: const Icon(Icons.ads_click))),
    );
  }
}
