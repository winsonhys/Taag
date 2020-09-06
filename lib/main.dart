import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/Auth/screens/AwaitScreen/AwaitScreen.dart';
import 'package:Taag/Orders/Orders.dart';
import 'package:Taag/Home/home.dart';
import 'package:Taag/UserProfile/UserProfile.dart';
import 'package:Taag/UserProfile/screens/AddCreditCard/AddCreditCard.dart';
import 'package:Taag/UserProfile/screens/Addresses/Addresses.dart';
import 'package:Taag/UserProfile/screens/PaymentMethods/PaymentMethods.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Taag/ItemDetails/ItemDetails.dart';
import 'package:Taag/Auth/screens/LoginScreen/LoginScreen.dart';
import 'package:Taag/graphql/GraphqlContainer.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: todo
  // TODO:Move this into await screen
  await Firebase.initializeApp();
  runApp(GraphQLContainer(
    child: MyApp(),
  ));
}

// Potentially might need our own onboarding + main stack.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserProvider>(
        create: (context) => UserProvider(context: context),
        child: GetMaterialApp(
          title: 'Taag',
          theme: ThemeData(
              primaryColor: Color.fromRGBO(239, 181, 163, 1),
              accentColor: Color.fromRGBO(245, 126, 126, 1),
              iconTheme: IconThemeData(color: Colors.white),
              accentIconTheme: IconThemeData(color: Colors.white),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              buttonTheme: ButtonThemeData(
                buttonColor: Color.fromRGBO(239, 181, 163, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              dividerColor: Colors.white,
              textTheme: GoogleFonts.ibmPlexSansTextTheme().apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                  decorationColor: Colors.white)),
          initialRoute: 'Await',
          getPages: [
            GetPage(name: UserProfile.route, page: () => UserProfile()),
            GetPage(name: 'Cart', page: () => Orders()),
            GetPage(name: 'Await', page: () => AwaitScreen()),
            GetPage(name: 'Home', page: () => HomePage()),
            GetPage(name: 'Login', page: () => LoginScreen()),
            GetPage(name: 'Addresses', page: () => Addresses()),
            GetPage(name: 'PaymentMethods', page: () => PaymentMethods()),
            GetPage(name: 'AddCreditCard', page: () => AddCreditCard()),
            GetPage(
                name: ItemDetails.route,
                page: () => ItemDetails(),
                transition: Transition.fade,
                transitionDuration: Duration(milliseconds: 300))
          ],
        ));
  }
}
