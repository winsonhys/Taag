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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 150,
                child: SizedBox(
                  child: FloatingActionButton(
                    heroTag: 'unq1',
                    onPressed: () {},
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: Colors.white,
                    foregroundColor: Theme.of(context).accentColor,
                    child: const Icon(Icons.add_shopping_cart, size: 36.0),
                  ),
                ),
              ),
              FloatingActionButton.extended(
                heroTag: 'unq2',
                onPressed: () {},
                materialTapTargetSize: MaterialTapTargetSize.padded,
                backgroundColor: Theme.of(context).accentColor,
                label: Text("BUY NOW",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
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
        style: TextStyle(color: Colors.blue),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                  child: Column(children: <Widget>[
                ItemDetailsHeader(
                    itemId: itemId, imageUri: imageUri, state: state),
                // Expands the body view to be as big as the screen or more. Expensive. https://api.flutter.dev/flutter/widgets/SingleChildScrollView-class.html
                Expanded(
                  child: Container(
                      constraints: BoxConstraints.expand(),
                      margin: EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0, bottom: 10),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: getItemDesc(state)),
                )
              ]))));
    });
  }
}
