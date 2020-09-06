import 'package:Taag/graphql/GraphqlContainerProvider.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class GraphQLContainer extends StatelessWidget {
  static String uuidFromObject(Object object) {
    if (object is Map<String, Object>) {
      final typeName = object['__typename'] as String;
      final id = object['id'].toString();
      if (typeName != null && id != null) {
        return <String>[typeName, id].join('/');
      }
    }
    return null;
  }

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
              dataIdFromObject: GraphQLContainer.uuidFromObject,
            ),
            link: link,
          ));
          return GraphQLProvider(client: client, child: child);
        });
  }
}
