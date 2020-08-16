import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLContainer extends StatefulWidget {
  static Link link;
  static HttpLink httpLink = HttpLink(
    uri: 'http://localhost:4000/',
  );

  static void setToken(String token) {
    final alink = AuthLink(getToken: () async => 'Bearer ' + token);
    GraphQLContainer.link = alink.concat(GraphQLContainer.httpLink);
  }

  static void removeToken() {
    GraphQLContainer.link = null;
  }

  final Widget child;
  const GraphQLContainer({Key key, @required this.child}) : super(key: key);

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

  @override
  _GraphQLContainerState createState() =>
      _GraphQLContainerState(link: link ?? httpLink, child: child);
}

class _GraphQLContainerState extends State<GraphQLContainer> {
  final Link link;
  final Widget child;
  _GraphQLContainerState({@required this.link, @required this.child});

  @override
  Widget build(BuildContext context) {
    final client = ValueNotifier(GraphQLClient(
      cache: OptimisticCache(
        dataIdFromObject: GraphQLContainer.uuidFromObject,
      ),
      link: link,
    ));
    return GraphQLProvider(client: client, child: child);
  }
}
