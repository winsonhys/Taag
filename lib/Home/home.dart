import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/Home/widgets/HomeView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

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
          final price = data.findOrdersFromOwnerId
              .fold(0, (previousValue, order) => previousValue + order.price);
          return HomeView(subtotal: price);
        });
  }
}
