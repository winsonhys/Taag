import 'package:flutter/material.dart';
import 'package:Taag/ItemDetails/widgets/ItemDetailsHeader.dart';
import 'package:Taag/graphql/api.graphql.dart';

class ItemDetailsBody extends StatelessWidget {
  final ShopItemMixin item;

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
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        item.description,
                      )),
                )
              ]))));
    });
  }
}
