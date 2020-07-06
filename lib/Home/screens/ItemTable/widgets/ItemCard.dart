import 'package:flutter/material.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/ItemDetails.dart';
import 'package:longzongbuy/models/shopping_item.dart';

class Itemcard extends StatelessWidget {
  final ShoppingItem item;

  const Itemcard(this.item, {Key key}) : super(key: key);

  void goToItemPage(context) {
    Navigator.pushNamed(context, ItemDetails.route,
        arguments: ItemDetailsArguments(item.id, item.imageUri));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToItemPage(context),
      child: Column(
        children: <Widget>[
          Hero(
              tag: item.id,
              child: Container(
                  constraints: BoxConstraints(maxHeight: 140),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        )
                      ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(item.imageUri)))),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
            child: Text(
              item.name,
              style: TextStyle(color: Colors.lightBlue, fontSize: 20),
            ),
          ),
          Text("\$${item.price}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
