import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/model_views/counterViewModel.dart';
import 'package:provider/provider.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    final viewCounter = Provider.of<CounterViewModel>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter ${viewCounter.counter}'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                viewCounter.increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                viewCounter.decrement();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
