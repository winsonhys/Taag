import 'package:flutter/material.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/bloc/itemdetails_bloc.dart';

class ItemDetailsHeader extends StatelessWidget {
  const ItemDetailsHeader(
      {Key key,
      @required this.itemId,
      @required this.imageUri,
      @required this.state})
      : super(key: key);

  final String itemId;
  final String imageUri;
  final ItemDetailsState state;

  getHeaderText(ItemDetailsState state, ThemeData themeData) {
    if (state is ItemDetailsSuccess) {
      return RichText(
          text: TextSpan(children: [
        TextSpan(
            style: themeData.textTheme.headline5.copyWith(
                color: themeData.accentColor, fontWeight: FontWeight.bold),
            text: "${state.item.name}\n")
      ]));
    }
  }

  getPriceText(ItemDetailsState state, ThemeData themeData) {
    if (state is ItemDetailsSuccess) {
      return RichText(
          text: TextSpan(children: [
        TextSpan(
            style: themeData.textTheme.headline6
                .copyWith(color: themeData.accentColor, fontSize: 15),
            text: "Price\n"),
        TextSpan(
            style: themeData.textTheme.headline3.copyWith(
                color: themeData.accentColor, fontWeight: FontWeight.bold),
            text: "\$${state.item.price}")
      ]));
    }
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
              child: Hero(tag: itemId, child: Image.network(imageUri)),
            )),
        Positioned.fill(
          right: 300,
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 30.0, top: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                getHeaderText(state, Theme.of(context)),
                getPriceText(state, Theme.of(context))
              ],
            ),
          ),
        )
      ],
    );
  }
}
