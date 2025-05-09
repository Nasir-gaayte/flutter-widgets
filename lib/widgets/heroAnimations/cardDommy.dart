import 'package:flutter/material.dart';

class Cardmodel {
  final String title;
  final String subtitle;
  final String image;
  final String description;

  Cardmodel({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.description,
  });
}

class DommyProvider with ChangeNotifier {
  final List<Cardmodel> _carditem = [
    Cardmodel(
      title: 'Title 1',
      subtitle: 'Subtitle 1',
      image: 'assets/dommy image/item1.jpg',
      description: 'Description 1',
    ),
    Cardmodel(
      title: 'Title 2',
      subtitle: 'Subtitle 2',
      image: 'assets/dommy image/item2.jpg',
      description: 'Description 2',
    ),
    Cardmodel(
      title: 'Title 3',
      subtitle: 'assets/dommy image/item3.jpg',
      image: 'assets/images/3.jpg',
      description: 'Description 3',
    ),
    Cardmodel(
      title: 'Title 4',
      subtitle: 'Subtitle 4',
      image: 'assets/dommy image/item4.jpg',
      description: 'Description 4',
    ),
    Cardmodel(
      title: 'Title 5',
      subtitle: 'Subtitle 5',
      image: 'assets/dommy image/item5.jpg',
      description: 'Description 5',
    ),
  ];
  List <Cardmodel> get carditem => _carditem;
}
