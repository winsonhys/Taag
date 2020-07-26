import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/widgets/AddToCartButton.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/widgets/ItemDetailsHeader.dart';
import 'package:longzongbuy/api.graphql.dart';

class ItemDetailsArguments {
  final String itemId;
  ItemDetailsArguments(this.itemId);
}

class ItemDetails extends StatelessWidget {
  final ItemDetailsArguments args;
  const ItemDetails(this.args, {Key key}) : super(key: key);
  static const route = "/details";
  @override
  Widget build(BuildContext context) {
    return Query(
        options: WatchQueryOptions(
            documentNode: FindOneShopItemQuery().document,
            variables: {'id': args.itemId}),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading) {
            return new Text("Loading");
          }
          final ItemMixin item =
              FindOneShopItem$Query.fromJson(result.data).shopItem;
          return Scaffold(
              backgroundColor: Theme.of(context).accentColor,
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AddToCartButton(),
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
              body: ItemDetailsBody(item: item));
        });
  }
}

class ItemDetailsBody extends StatelessWidget {
  final ItemMixin item;

  const ItemDetailsBody({@required this.item, Key key}) : super(key: key);

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
                ItemDetailsHeader(item: item),
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
                      child: Text(
                        item.description,
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ]))));
    });
  }
}
