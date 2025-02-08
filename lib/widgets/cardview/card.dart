import 'package:flutter/material.dart';
import 'package:flutter_widget/models/productModel.dart';

class MyCard extends StatelessWidget {
  ProductModel productModel;
  MyCard({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Column(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 5,
                    offset: Offset(0, 10),
                  ),
                  BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 15,
                      offset: Offset(10, 0),
                      spreadRadius: 5)
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage(productModel.image),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: 200,
            height: 51,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(productModel.name.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                Column(
                  children: [
                    const Text("Price👌"),
                    Text("\$ ${productModel.price}",
                        style:
                            const TextStyle(fontSize: 10, color: Colors.red)),
                  ],
                ),
                const Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ),
          Text(productModel.description,
              style: const TextStyle(
                  fontSize: 10, color: Color.fromARGB(69, 0, 0, 0))),
        ],
      ),
    );
  }
}
