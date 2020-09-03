import 'package:Taag/UserProfile/screens/PaymentMethods/widgets/RemovePaymentMethodButton.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';

class PaymentMethodTile extends StatelessWidget {
  final PaymentMethodMixin paymentMethod;
  final Function onPaymentMethodRemoved;
  const PaymentMethodTile(
      {Key key,
      @required this.paymentMethod,
      @required this.onPaymentMethodRemoved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = paymentMethod.card;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AutoSizeText.rich(
          TextSpan(children: [
            TextSpan(
                style: Theme.of(context).textTheme.headline5,
                text: '${card.brand.capitalize()}\n'),
            TextSpan(
                style: Theme.of(context).textTheme.subtitle1,
                text: '**** **** **** ${card.last4}\n'),
            TextSpan(
                style: Theme.of(context).textTheme.subtitle1,
                text: '${card.exp_month.toInt()}/${card.exp_year.toInt()}'),
          ]),
          minFontSize: 6,
        ),
        RemovePaymentMethodButton(
          paymentMethodId: paymentMethod.id,
          onPaymentMethodRemoved: onPaymentMethodRemoved,
        )
      ],
    );
  }
}
