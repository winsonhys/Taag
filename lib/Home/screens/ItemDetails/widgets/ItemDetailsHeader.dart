import 'package:flutter/material.dart';
import 'package:longzongbuy/api.graphql.dart';

class ItemDetailsHeader extends StatelessWidget {
  const ItemDetailsHeader({
    Key key,
    @required this.item,
  }) : super(key: key);

  final ItemMixin item;

  getHeaderText(ItemMixin item, ThemeData themeData) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          style: themeData.textTheme.headline5.copyWith(
              color: themeData.accentColor, fontWeight: FontWeight.bold),
          text: "${item.name}\n")
    ]));
  }

  getPriceText(ItemMixin item, ThemeData themeData) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          style: themeData.textTheme.headline6
              .copyWith(color: themeData.accentColor, fontSize: 15),
          text: "Price\n"),
      TextSpan(
          style: themeData.textTheme.headline3.copyWith(
              color: themeData.accentColor, fontWeight: FontWeight.bold),
          text: "\$${item.price}")
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 100),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(25.0)),
              child: Image.network(item.imageUrl),
            )),
        Positioned.fill(
          right: 300,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 30.0, top: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                getHeaderText(item, Theme.of(context)),
                getPriceText(item, Theme.of(context))
              ],
            ),
          ),
        )
      ],
    );
  }
}
