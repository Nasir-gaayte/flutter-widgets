import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/heroAnimations/cardDommy.dart';

class CardDetail extends StatelessWidget {
  Cardmodel cardmodel;
  CardDetail({super.key, required this.cardmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cardmodel.title),
      ),
      body: Center(
        child: Container(
          height: 700,
          child: Column(
            children: [
              Hero(
                tag: cardmodel.image,
                child: Image.asset(
                  cardmodel.image,
                  width: 100,
                  height: 100,
                ),
              ),
              Text(cardmodel.title),
              Text(cardmodel.subtitle),
              Text(cardmodel.description),
            ],
          ),
        ),
      ),
    );
  }
}
