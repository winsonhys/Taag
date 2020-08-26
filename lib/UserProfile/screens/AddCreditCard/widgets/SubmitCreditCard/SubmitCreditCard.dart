import 'dart:developer';

import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/UserProfile/providers/CreditCardProvider.dart';
import 'package:Taag/UserProfile/screens/AddCreditCard/widgets/SubmitCreditCard/SubmitCreditCardButtonWidget.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:pedantic/pedantic.dart';

class SubmitCreditCardButton extends StatelessWidget {
  SubmitCreditCardButton({Key key}) : super(key: key) {
    StripePayment.setOptions(StripeOptions(
        publishableKey:
            'pk_test_51HH3hmCGEU6tzG7r99C67z0EPX0PoBDtlE5ScZtuQZkiryDlA5fA3Pauo2a2lRT8Wd5wMHxEocMjNjpZr1H55g05005fQI4X3Q',
        merchantId: 'test',
        androidPayMode: 'test'));
  }

  void onSubmitPressed(BuildContext context) async {
    final card = context.read<CreditCardProvider>().getCreditCard();
    PaymentMethod paymentMethod;
    try {
      paymentMethod = await StripePayment.createPaymentMethod(
        PaymentMethodRequest(
          card: card,
        ),
      );
    } on PlatformException catch (e) {
      unawaited(FlushbarHelper.createError(message: e.message).show(context));
      return;
    }

    final stripeCustId = context.read<UserProvider>().user.stripe_cust_id;
    final client = GraphQLProvider.of(context).value;
    inspect(card);
    final result = await client.mutate(MutationOptions(
        documentNode: AddPaymentInfoMutation().document,
        variables: AddPaymentInfoArguments(
                token: paymentMethod.id, stripeCustId: stripeCustId)
            .toJson()));
    if (result.exception != null) {
      unawaited(FlushbarHelper.createError(
              message: result.exception.graphqlErrors[0].message)
          .show(context));
      return;
    }
    unawaited(FlushbarHelper.createSuccess(message: 'Card has been added')
        .show(context));
  }

  @override
  Widget build(BuildContext context) {
    return SubmitCreditCardButtonWidget(
        onSubmitPressed: () => onSubmitPressed(context));
  }
}
