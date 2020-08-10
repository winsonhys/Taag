import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Taag/Home/home.dart';
import 'package:Taag/ItemDetails/ItemDetails.dart';
import 'package:Taag/Auth/screens/LoginScreen/LoginScreen.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GraphQLContainer(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Taag',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(239, 181, 163, 1),
          accentColor: Color.fromRGBO(245, 126, 126, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.ibmPlexSansTextTheme()
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
      initialRoute: "Login",
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "Login", page: () => LoginScreen()),
        GetPage(
            name: ItemDetails.route,
            page: () => ItemDetails(),
            transition: Transition.fade,
            transitionDuration: Duration(milliseconds: 300))
      ],
    );
  }
}
