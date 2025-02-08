import 'package:flutter/material.dart';
import 'package:flutter_widget/models/productModel.dart';
import 'package:flutter_widget/providers/dataProvider.dart';
import 'package:flutter_widget/widgets/cardview/card.dart';
import 'package:provider/provider.dart';

class MycardViewPage extends StatelessWidget {
  const MycardViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ProductModel> productList =
        Provider.of<DataProvider>(context).productList;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return MyCard(
            productModel: productList[index],
          );
        },
      ),
    );
  }
}
