import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/bloc/itemdetails_bloc.dart';
import 'package:longzongbuy/models/shopping_item.dart';

class ItemDetailsArguments {
  final String itemId;
  final String imageUri;
  ItemDetailsArguments(this.itemId, this.imageUri);
}

class ItemDetails extends StatelessWidget {
  final ItemDetailsArguments args;
  const ItemDetails(this.args, {Key key}) : super(key: key);
  static const route = "/details";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
        builder: (context, state) {
      if (state is ItemDetailsInitial) {
        BlocProvider.of<ItemDetailsBloc>(context)
            .add(ItemDetailsFetched(args.itemId));
      }
      return Scaffold(
          backgroundColor: Theme.of(context).accentColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          ),
          body: ItemDetailsBody(state, args.imageUri, args.itemId));
    });
  }
}

class ItemDetailsBody extends StatelessWidget {
  final ItemDetailsState state;
  final String imageUri;
  final String itemId;
  const ItemDetailsBody(this.state, this.imageUri, this.itemId, {Key key})
      : super(key: key);

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
    return Container();
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
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Stack(
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
      )
    ]));
  }
}
