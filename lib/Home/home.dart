import 'package:Taag/Home/widgets/HomeView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
          documentNode: FindOrdersFromOwnerIdQuery().document,
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.loading) {
            return CircularProgressIndicator();
          }
          final data = FindOrdersFromOwnerId$Query.fromJson(result.data);
          final price = data.findOrdersFromOwnerId
              .fold(0.0, (previousValue, order) => previousValue + order.price);
          return HomeView(subtotal: price);
        });
  }
}
