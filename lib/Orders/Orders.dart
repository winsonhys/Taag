import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/Orders/OrdersView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class Orders extends StatelessWidget {
  const Orders({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            documentNode: FindOrdersFromOwnerIdQuery().document,
            variables: {'ownerId': context.watch<UserProvider>().user.id}),
        builder: (result, {fetchMore, refetch}) {
          if (result.loading) {
            return CircularProgressIndicator();
          }
          final data = FindOrdersFromOwnerId$Query.fromJson(result.data);
          return OrdersView(orders: data.findOrdersFromOwnerId);
        });
  }
}
