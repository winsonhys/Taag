import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/UserProfile/providers/CreditCardProvider.dart';
import 'package:Taag/UserProfile/screens/AddCreditCard/widgets/SubmitCreditCard/SubmitCreditCardButtonWidget.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stripe_payment/stripe_payment.dart';

class SubmitCreditCardButton extends StatelessWidget {
  SubmitCreditCardButton({Key key}) : super(key: key) {
    StripePayment.setOptions(StripeOptions(
        publishableKey:
            'pk_test_51HH3hmCGEU6tzG7r99C67z0EPX0PoBDtlE5ScZtuQZkiryDlA5fA3Pauo2a2lRT8Wd5wMHxEocMjNjpZr1H55g05005fQI4X3Q',
        merchantId: 'test',
        androidPayMode: 'test'));
  }

  void onSubmitPressed(BuildContext context) async {
    final card = context.watch<CreditCardProvider>().getCreditCard();
    try {
      await StripePayment.createPaymentMethod(
        PaymentMethodRequest(
          card: card,
        ),
      );
    } catch (e) {
      FlushbarHelper.createError(
          message: 'Failed to create card, please try again');
    }

    final stripeCustId = context.watch<UserProvider>().user.stripe_cust_id;
    final client = GraphQLProvider.of(context).value;
    await client.mutate(MutationOptions(
        documentNode: AddPaymentInfoMutation().document,
        variables: AddPaymentInfoArguments(
                token: card.token, stripeCustId: stripeCustId)
            .toJson()));
    FlushbarHelper.createSuccess(message: 'Card has been added');
  }

  @override
  Widget build(BuildContext context) {
    return SubmitCreditCardButtonWidget(
        onSubmitPressed: () => onSubmitPressed(context));
  }
}
