import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RemovePaymentMethodButton extends StatelessWidget {
  final String paymentMethodId;
  final Function onPaymentMethodRemoved;
  const RemovePaymentMethodButton(
      {Key key,
      @required this.paymentMethodId,
      @required this.onPaymentMethodRemoved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deletePaymentInfoArgs =
        DeletePaymentInfoArguments(paymentMethodId: paymentMethodId);
    return Mutation(
        options: MutationOptions(
          documentNode: DeletePaymentInfoMutation().document,
          variables: deletePaymentInfoArgs.toJson(),
          onCompleted: (data) {
            onPaymentMethodRemoved();
            FlushbarHelper.createSuccess(
              message: 'Card has been removed',
            ).show(context);
          },
        ),
        builder: (RunMutation runMutation, result) {
          return RaisedButton(
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            onPressed: () {
              runMutation(
                deletePaymentInfoArgs.toJson(),
              );
            },
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: result.loading
                    ? CircularProgressIndicator()
                    : Text(
                        'Remove',
                      )),
          );
        });
  }
}
