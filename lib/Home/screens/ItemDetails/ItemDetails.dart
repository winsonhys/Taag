import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/bloc/itemdetails_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/widgets/ItemDetailsHeader.dart';

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
          floatingActionButton: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 150,
                child: SizedBox(
                  child: FloatingActionButton(
                    heroTag: 'unq1',
                    onPressed: () {},
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: Colors.green,
                    child: const Icon(Icons.map, size: 36.0),
                  ),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              FloatingActionButton.extended(
                heroTag: 'unq2',
                onPressed: () {},
                materialTapTargetSize: MaterialTapTargetSize.padded,
                backgroundColor: Colors.white,
                label: Text("BUY NOW",
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
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

  getItemDesc(ItemDetailsState state) {
    if (state is ItemDetailsSuccess) {
      final text = state.item.desc;
      return Text(
        text,
        style: TextStyle(color: Colors.white),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
            child: Column(children: <Widget>[
          ItemDetailsHeader(itemId: itemId, imageUri: imageUri, state: state),
          Padding(
              padding: EdgeInsets.only(top: 20.0), child: getItemDesc(state))
        ])),
      ],
    );
  }
}
