import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:flutter/material.dart';
import 'package:stripe_payment/stripe_payment.dart';

class CreditCardProvider extends ChangeNotifier {
  String cardNumber;
  String name;
  String valid;
  String cvv;
  InputState _state;

  InputState get state => _state;

  set state(InputState state) {
    _state = state;
    notifyListeners();
  }

  CreditCard getCreditCard() {
    final expiry =
        valid.split('/').map((monthYear) => int.parse(monthYear)).toList();
    return CreditCard(
        name: name,
        number: cardNumber,
        cvc: cvv,
        expMonth: expiry[0],
        expYear: expiry[1]);
  }
}
