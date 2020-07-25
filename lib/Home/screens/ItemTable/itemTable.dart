import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:longzongbuy/Home/screens/ItemTable/bloc/itemtable_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemTable/widgets/ItemCard.dart';
import 'package:longzongbuy/api.graphql.dart';

class ItemTable extends StatefulWidget {
  @override
  _ItemTableState createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
  // Widget _buildGridItem(ShoppingItem item) {
  //   return Itemcard(item);
  // }

  @override
  Widget build(BuildContext context) {
    return Query(
        options: WatchQueryOptions(documentNode: AllShopItemsQuery().document),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          inspect(result);
          if (result.loading) {
            return new Text("Loading");
          }
          final data = AllShopItems$Query.fromJson(result.data);
          inspect(data);
          return StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemBuilder: (BuildContext context, int index) =>
                  new Text("Hello"),
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20);
        });
  }
}
