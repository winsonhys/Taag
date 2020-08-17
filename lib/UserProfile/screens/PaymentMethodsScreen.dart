import 'package:credit_card_input_form/credit_card_input_form.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final creditCardBoxDeco = BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))
        ],
        gradient: LinearGradient(colors: [
          Theme.of(context).primaryColor,
          Theme.of(context).accentColor
        ]),
        borderRadius: BorderRadius.all(Radius.circular(15)));
    final nextPrevBoxDeco = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black54, blurRadius: 5.0, offset: Offset(0, 5))
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
      gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).accentColor
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Information',
          style: Theme.of(context).textTheme.headline5,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: CreditCardInputForm(
          cardHeight: 170,
          onStateChange: (currentState, cardInfo) {
            print(currentState);
            print(cardInfo);
          },
          backCardDecoration: creditCardBoxDeco,
          frontCardDecoration: creditCardBoxDeco,
          nextButtonDecoration: nextPrevBoxDeco,
          prevButtonDecoration: nextPrevBoxDeco,
        ),
      ),
    );
  }
}
