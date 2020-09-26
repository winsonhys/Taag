import 'dart:developer';

import 'package:Taag/ItemDetails/widgets/BuyNowButton/BuyNowButton.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:Taag/ItemDetails/widgets/AddAFriendButton/AddAFriendButton.dart';
import 'package:Taag/ItemDetails/widgets/ItemDetailsBody.dart';

class ItemDetailsArguments {
  final String itemId;
  ItemDetailsArguments(this.itemId);
}

class ItemDetails extends StatelessWidget {
  ItemDetails({Key key}) : super(key: key);
  static const route = '/details';
  final ItemDetailsArguments args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Query(
        options: WatchQueryOptions(
            documentNode: FindOneShopItemQuery().document,
            variables: {'id': args.itemId}),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading) {
            return Text('Loading');
          }
          final ShopItemMixin item =
              FindOneShopItem$Query.fromJson(result.data).shopItem;

          return Scaffold(
              backgroundColor: Theme.of(context).accentColor,
              floatingActionButton: Padding(
                padding: const EdgeInsets.only(left: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    BuyNowButton(
                      itemId: item.id,
                    ),
                    AddAFriendButton()
                  ],
                ),
              ),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
              ),
              body: ItemDetailsBody(item: item));
        });
  }
}
