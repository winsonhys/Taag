import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/Cart/CartView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
            documentNode: FindCartFromOwnerIdQuery().document,
            variables: {"ownerId": context.watch<UserProvider>().user.id}),
        builder: (result, {fetchMore, refetch}) {
          if (result.loading) {
            return CircularProgressIndicator();
          }
          final data = FindCartFromOwnerId$Query.fromJson(result.data);
          return CartView(data: data);
        });
  }
}
