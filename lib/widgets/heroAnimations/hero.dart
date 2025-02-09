import 'package:flutter/material.dart';
import 'package:flutter_widget/widgets/heroAnimations/cardDetail.dart';
import 'package:flutter_widget/widgets/heroAnimations/cardDommy.dart';
import 'package:provider/provider.dart';

class HeroAnimations extends StatelessWidget {
  const HeroAnimations({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Cardmodel> carditem =
        Provider.of<DommyProvider>(context).carditem;
    return ListView.builder(
      itemCount: carditem.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Hero(
              tag: carditem[index].image,
              child: Image.asset(
                carditem[index].image,
                width: 50,
                height: 50,
              ),
            ),
            title: Text(carditem[index].title),
            subtitle: Text(carditem[index].subtitle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardDetail(
                    cardmodel: carditem[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
