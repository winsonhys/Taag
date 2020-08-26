import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/UserProfile/providers/CreditCardProvider.dart';
import 'package:Taag/UserProfile/screens/AddCreditCard/widgets/SubmitCreditCard/SubmitCreditCardButtonWidget.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:pedantic/pedantic.dart';

class SubmitCreditCardButton extends StatelessWidget {
  SubmitCreditCardButton({Key key}) : super(key: key);

  void onSubmitPressed(BuildContext context) async {
    PaymentMethod paymentMethod;
    context.read<CreditCardProvider>().isAddingCreditCard = true;
    try {
      paymentMethod =
          await context.read<CreditCardProvider>().createPaymentMethod();
    } on PlatformException catch (e) {
      context.read<CreditCardProvider>().isAddingCreditCard = false;
      unawaited(FlushbarHelper.createError(message: e.message).show(context));
      return;
    }

    final stripeCustId = context.read<UserProvider>().user.stripe_cust_id;
    final client = GraphQLProvider.of(context).value;
    final result = await client.mutate(MutationOptions(
        documentNode: AddPaymentInfoMutation().document,
        variables: AddPaymentInfoArguments(
                token: paymentMethod.id, stripeCustId: stripeCustId)
            .toJson()));
    if (result.exception != null) {
      unawaited(FlushbarHelper.createError(
              message: result.exception.graphqlErrors[0].message)
          .show(context));
      context.read<CreditCardProvider>().isAddingCreditCard = false;
      return;
    }

    await FlushbarHelper.createSuccess(
            message: 'Card has been added',
            duration: Duration(milliseconds: 200))
        .show(context)
        .whenComplete(() => Get.back());
  }

  @override
  Widget build(BuildContext context) {
    return SubmitCreditCardButtonWidget(
        onSubmitPressed: () => onSubmitPressed(context));
  }
}
