import 'package:flutter/material.dart';
import 'package:longzongbuy/models/shopping_item.dart';

class Itemcard extends StatelessWidget {
  final ShoppingItem item;

  const Itemcard(this.item, {Key key}) : super(key: key);

  void goToItemPage() {
    print("Go to Item Page");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goToItemPage,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(25),
              constraints: BoxConstraints(maxHeight: 140),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                    )
                  ]),
              child: Hero(tag: item.id, child: Image.network(item.imageUri))),
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
