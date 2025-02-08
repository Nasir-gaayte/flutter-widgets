import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _ResponsiveScreenState();
}

class _ResponsiveScreenState extends State<ResponsiveScreen> {
  bool isScreenMobile(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  bool isScreenDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  bool isHi(BuildContext context) => MediaQuery.of(context).size.height > 500;
  @override
  Widget build(BuildContext context) {
    double mediaWightSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Text(
            'Responsive Screen',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isScreenMobile(context))
                Container(
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 207, 62, 236),
                  ),
                  child: Text(
                    mediaWightSize.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 32, 247, 121),
                  ),
                  child: Text(
                    'Responsive Screen',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        if (isHi(context))
          Container(
            height: 50,
          )
      ],
    );
  }
}
