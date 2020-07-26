import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:longzongbuy/Home/home.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/ItemDetails.dart';
import 'package:longzongbuy/Login/screens/LoginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GraphQLContainer());
}

class GraphQLContainer extends StatelessWidget {
  static String uuidFromObject(Object object) {
    if (object is Map<String, Object>) {
      final String typeName = object['__typename'] as String;
      final String id = object['id'].toString();
      if (typeName != null && id != null) {
        return <String>[typeName, id].join('/');
      }
    }
    return null;
  }

  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
        cache: OptimisticCache(
          dataIdFromObject: uuidFromObject,
        ),
        link: HttpLink(
          uri: 'http://localhost:4000/',
        )),
  );
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(client: client, child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Color.fromRGBO(251, 171, 102, 1),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.ibmPlexSansTextTheme()),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case ItemDetails.route:
              return PageRouteBuilder(
                  pageBuilder: (context, _, __) =>
                      ItemDetails(settings.arguments),
                  transitionDuration: Duration(milliseconds: 300),
                  transitionsBuilder: (_, anim, __, child) =>
                      FadeTransition(opacity: anim, child: child));

            default:
              return MaterialPageRoute(
                  settings: settings, builder: (context) => (HomePage()));
          }
        },
        routes: {"auth": (context) => LoginScreen()},
        home: LoginScreen());
  }
}
