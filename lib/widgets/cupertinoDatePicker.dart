import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime date = DateTime(2024, 08, 30);
  DateTime time = DateTime(2024, 8, 30, 11, 25);
  DateTime dateTime = DateTime(2024, 8, 30, 11, 25);

  // This function displays a CupertinoModalPopup with a reasonable fixed height
  // which hosts CupertinoDatePicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
          elevation: 2.0,
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
              child: Text(
                  'Date: ${DateFormat('yyyy-MM-dd – kk:mm').format(date.toLocal())}'
                      .toUpperCase()))),
      Spacer(),
      DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _DatePickerItem(
                      children: <Widget>[
                        const Text('Date'),
                        CupertinoButton(
                          // Display a CupertinoDatePicker in date picker mode.
                          onPressed: () => _showDialog(
                            CupertinoDatePicker(
                              initialDateTime: date,
                              mode: CupertinoDatePickerMode.date,
                              use24hFormat: false,
                              // This shows day of week alongside day of month
                              showDayOfWeek: true,
                              // This is called when the user changes the date.
                              onDateTimeChanged: (DateTime newDate) {
                                setState(() => date = newDate);
                              },
                            ),
                          ),
                          // In this example, the date is formatted manually. You can
                          // use the intl package to format the value based on the
                          // user's locale settings.
                          child: Text(
                            '${date.month}-${date.day}-${date.year}',
                            style: const TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    _DatePickerItem(
                      children: <Widget>[
                        const Text('Time'),
                        CupertinoButton(
                          // Display a CupertinoDatePicker in time picker mode.
                          onPressed: () => _showDialog(
                            CupertinoDatePicker(
                              initialDateTime: time,
                              mode: CupertinoDatePickerMode.time,
                              use24hFormat: false,
                              // This is called when the user changes the time.
                              onDateTimeChanged: (DateTime newTime) {
                                setState(() => time = newTime);
                              },
                            ),
                          ),
                          // In this example, the time value is formatted manually.
                          // You can use the intl package to format the value based on
                          // the user's locale settings.
                          child: Text(
                            '${time.hour}:${time.minute}',
                            style: const TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    _DatePickerItem(
                      children: <Widget>[
                        const Text('DateTime'),
                        CupertinoButton(
                          // Display a CupertinoDatePicker in dateTime picker mode.
                          onPressed: () => _showDialog(
                            CupertinoDatePicker(
                              initialDateTime: dateTime,
                              use24hFormat: true,
                              // This is called when the user changes the dateTime.
                              onDateTimeChanged: (DateTime newDateTime) {
                                setState(() => dateTime = newDateTime);
                              },
                            ),
                          ),
                          // In this example, the time value is formatted manually. You
                          // can use the intl package to format the value based on the
                          // user's locale settings.
                          child: Text(
                            '${dateTime.month}-${dateTime.day}-${dateTime.year} ${dateTime.hour}:${dateTime.minute}',
                            style: const TextStyle(
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

// This class simply decorates a row of widgets.
class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
