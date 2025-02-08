import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: const TextSpan(
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              children: [
                TextSpan(
                  text:
                      'bing a softwear developer is a great job and i love it , coding for me is a pretheum to my soul like a fish in the water ',
                  style: TextStyle(color: Colors.grey, fontSize: 21),
                ),
                TextSpan(
                  text: '- Nasir',
                  style: TextStyle(fontSize: 35),
                ),
                TextSpan(
                  text: ' Gaayte -',
                  style: TextStyle(color: Colors.red, fontSize: 35),
                ),
                TextSpan(
                  text:
                      ' hadii ann helilahaa in aan qoro luqad coding oo af soomali ha add ayaan u jeclaan lahaa anigoo og in aan fidayn sabab waxaa ku hadla afsoomaliga dad yar ',
                  style: TextStyle(color: Colors.grey, fontSize: 21),
                ),
              ]),
        ),
      ),
    );
  }
}
