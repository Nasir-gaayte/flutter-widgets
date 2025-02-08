import 'package:flutter/material.dart';

class ExpansiontilePage extends StatefulWidget {
  const ExpansiontilePage({super.key});

  @override
  State<ExpansiontilePage> createState() => _ExpansiontilePageState();
}

class _ExpansiontilePageState extends State<ExpansiontilePage> {
  Color co = Color.fromARGB(157, 169, 198, 221);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ExpansionTile(
          collapsedShape: Border(
            top: BorderSide(
              color: Colors.red,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            left: BorderSide(
              color: Colors.greenAccent,
              width: 5,
            ),
            right: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          childrenPadding: const EdgeInsets.all(20),
          maintainState: true,
          iconColor: const Color.fromARGB(255, 54, 238, 244),
          collapsedIconColor: const Color.fromARGB(255, 158, 54, 244),
          minTileHeight: 150,
          tilePadding: const EdgeInsets.all(10),
          backgroundColor: co,
          collapsedTextColor: Colors.green,
          textColor: Colors.red,
          subtitle: Text("Subtitle"),
          title: Text("ExpansionTile"),
          children: [
            ListTile(
              onFocusChange: (value) {
                value ? print("Focus Changed") : print("Focus Changed");
                setState(() {});
              },
              onTap: () {
                print("Item 1");

                setState(() {
                  if (co == Color.fromARGB(157, 169, 198, 221)) {
                    co = const Color.fromARGB(255, 219, 166, 163);
                  } else {
                    co = Color.fromARGB(157, 169, 198, 221);
                  }
                });
              },
              title: const Text('Item 1'),
            ),
            ListTile(
              title: const Text('Item 2'),
            ),
            ListTile(
              title: const Text('Item 3'),
            ),
          ],
        ),
      ),
    );
  }
}
