import 'package:flutter/material.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/ItemDetails.dart';
import 'package:longzongbuy/api.graphql.dart';

class Itemcard extends StatelessWidget {
  final ItemMixin item;

  const Itemcard({@required this.item, Key key}) : super(key: key);

  void goToItemPage(context) {
    Navigator.pushNamed(context, ItemDetails.route,
        arguments: ItemDetailsArguments(item.id));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToItemPage(context),
      child: Column(
        children: <Widget>[
          Container(
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
                  child: Image.network(item.imageUrl))),
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
