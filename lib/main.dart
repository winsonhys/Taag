import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Taag/Home/home.dart';
import 'package:Taag/ItemDetails/ItemDetails.dart';
import 'package:Taag/Login/screens/LoginScreen.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GraphQLContainer(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(239, 181, 163, 1),
          accentColor: Color.fromRGBO(245, 126, 126, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.ibmPlexSansTextTheme()
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case ItemDetails.route:
            return PageRouteBuilder(
                pageBuilder: (context, _, __) =>
                    ItemDetails(settings.arguments),
                transitionDuration: Duration(milliseconds: 300),
                transitionsBuilder: (_, anim, __, child) =>
                    FadeTransition(opacity: anim, child: child));
          case '/':
            return PageRouteBuilder(
                pageBuilder: (context, _, __) => HomePage(),
                transitionDuration: Duration(milliseconds: 500),
                transitionsBuilder: (_, anim, __, child) =>
                    FadeTransition(opacity: anim, child: child));
          case 'login':
            return PageRouteBuilder(
                pageBuilder: (context, _, __) => LoginScreen(),
                transitionDuration: Duration(milliseconds: 500),
                transitionsBuilder: (_, anim, __, child) =>
                    FadeTransition(opacity: anim, child: child));
          default:
            return MaterialPageRoute(
                settings: settings, builder: (context) => (HomePage()));
        }
      },
      routes: {
        // "auth": (context) => LoginScreen(),
        // "home": (context) => HomePage()
      },
    );
  }
}
