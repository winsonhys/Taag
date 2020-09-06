import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphqlContainerProvider extends ChangeNotifier {
  final HttpLink _httpLink = HttpLink(
    uri: 'http://localhost:4000/',
  );
  Link link = HttpLink(
    uri: 'http://localhost:4000/',
  );

  void setToken(String token) {
    final alink = AuthLink(getToken: () async => token);
    link = alink.concat(_httpLink);
    notifyListeners();
  }

  void removeToken() {
    link = null;
    notifyListeners();
  }
}
