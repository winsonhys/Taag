import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:longzongbuy/Home/screens/ItemTable/widgets/ItemCard.dart';
import 'package:longzongbuy/api.graphql.dart';

class ItemTable extends StatefulWidget {
  @override
  _ItemTableState createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
  Widget _buildGridItem(ItemMixin item) {
    return Itemcard(item: item);
  }

  @override
  Widget build(BuildContext context) {
    return Query(
        options: WatchQueryOptions(documentNode: AllShopItemsQuery().document),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.loading) {
            return new Text("Loading");
          }
          final List<ItemMixin> items =
              AllShopItems$Query.fromJson(result.data).shopItems;
          return StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) =>
                  _buildGridItem(items[index]),
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20);
        });
  }
}
