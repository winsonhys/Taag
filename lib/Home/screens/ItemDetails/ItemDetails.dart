import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/bloc/itemdetails_bloc.dart';
import 'package:longzongbuy/models/shopping_item.dart';

class ItemDetails extends StatelessWidget {
  static const route = "/details";
  @override
  Widget build(BuildContext context) {
    final String itemId = ModalRoute.of(context).settings.arguments;

    return BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
        builder: (context, state) {
      if (state is ItemDetailsInitial) {
        BlocProvider.of<ItemDetailsBloc>(context)
            .add(ItemDetailsFetched(itemId));
      }
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(elevation: 0),
          body: ItemDetailsBody(state));
    });
  }
}

class ItemDetailsBody extends StatelessWidget {
  final ItemDetailsState state;
  const ItemDetailsBody(this.state, {Key key}) : super(key: key);

  getItemComponent(ItemDetailsState state) {
    if (state is ItemDetailsInitial) {
      return CircularProgressIndicator();
    }
    if (state is ItemDetailsSuccess) {
      return Image.network(state.item.imageUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Container(
          child: Hero(tag: ShoppingItem.tag, child: getItemComponent(state))),
      Text("Hello")
    ]));
  }
}
