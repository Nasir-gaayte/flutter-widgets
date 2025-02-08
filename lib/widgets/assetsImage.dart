import 'package:flutter/material.dart';

class MyAssetsImage extends StatelessWidget {
  const MyAssetsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 173, 171, 171),
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: Offset(10, 10),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/bic1.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: 300,
                child: Image.asset(
                  'assets/images/bic2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(child: Image.asset('assets/images/bic1.jpg')),
        ],
      ),
    );
  }
}
