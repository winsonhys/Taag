import 'package:Taag/UserProfile/providers/CreditCardProvider.dart';
import 'package:Taag/UserProfile/screens/AddCreditCard/AddCreditCardView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCreditCard extends StatelessWidget {
  const AddCreditCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) => CreditCardProvider(), child: AddCreditCardView());
  }
}
