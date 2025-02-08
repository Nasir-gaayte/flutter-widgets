import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget {
  const MyBottomAppBar({super.key});

  @override
  State<MyBottomAppBar> createState() => _MyBottomAppBarState();
}

class _MyBottomAppBarState extends State<MyBottomAppBar> {
  int index = 0;
  List<Widget> pages = [
    const Icon(
      Icons.home,
      size: 50,
    ),
    const Icon(
      Icons.settings,
      size: 50,
    ),
    const Icon(
      Icons.person,
      size: 50,
    ),
  ];
  List<Color> colors = [
    const Color.fromARGB(255, 255, 152, 144),
    const Color.fromARGB(255, 127, 192, 245),
    const Color.fromARGB(255, 165, 252, 168),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                color: colors[index],
                child: AnimatedContainer(
                    alignment: index == 0
                        ? Alignment.topCenter
                        : index == 1
                            ? Alignment.bottomCenter
                            : Alignment.centerLeft,
                    transformAlignment: Alignment.topCenter,
                    curve: Curves.easeInOut,
                    // ignore: prefer_const_constructors
                    duration: Duration(
                      seconds: 3,
                    ),
                    child: pages[index]))),
        BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          fixedColor: Colors.amber,
        ),
      ],
    );
  }
}
