import 'package:credit_card_input_form/constants/constanst.dart';
import 'package:flutter/material.dart';
import 'package:stripe_payment/stripe_payment.dart';

class CreditCardProvider extends ChangeNotifier {
  CreditCardProvider() : super() {
    StripePayment.setOptions(StripeOptions(
        publishableKey:
            'pk_test_51HH3hmCGEU6tzG7r99C67z0EPX0PoBDtlE5ScZtuQZkiryDlA5fA3Pauo2a2lRT8Wd5wMHxEocMjNjpZr1H55g05005fQI4X3Q',
        merchantId: 'test',
        androidPayMode: 'test'));
  }

  String cardNumber;
  String name;
  String valid;
  String cvv;

  bool _isAddingCreditCard = false;
  bool get isAddingCreditCard => _isAddingCreditCard;
  set isAddingCreditCard(bool isAddingCreditCard) {
    _isAddingCreditCard = isAddingCreditCard;
    notifyListeners();
  }

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

  Future<PaymentMethod> createPaymentMethod() {
    final expiry =
        valid.split('/').map((monthYear) => int.parse(monthYear)).toList();
    final card = CreditCard(
        name: name,
        number: cardNumber,
        cvc: cvv,
        expMonth: expiry[0],
        expYear: expiry[1]);
    return StripePayment.createPaymentMethod(
      PaymentMethodRequest(
        card: card,
      ),
    );
  }
}
