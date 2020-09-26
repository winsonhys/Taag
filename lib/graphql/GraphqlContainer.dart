import 'package:Taag/graphql/GraphqlContainerProvider.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class GraphQLContainer extends StatelessWidget {
  final Widget child;
  const GraphQLContainer({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => GraphqlContainerProvider(),
        builder: (context, _) {
          final link = context.watch<GraphqlContainerProvider>().link;
          final client = ValueNotifier(GraphQLClient(
            cache: OptimisticCache(
              dataIdFromObject: typenameDataIdFromObject,
            ),
            link: link,
          ));
          return GraphQLProvider(client: client, child: child);
        });
  }
}
