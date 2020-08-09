import 'package:Taag/graphql/api.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:Taag/ItemDetails/ItemDetails.dart';
import 'package:lottie/lottie.dart';

class Itemcard extends StatelessWidget {
  final ShopItemMixin item;

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
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                      imageUrl: item.imageUrl,
                      placeholder: (context, url) =>
                          Lottie.asset("assets/lottie/corgi.json")))),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
            child: Text(
              item.name,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Text("\$${item.price}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
