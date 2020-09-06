import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RemoveAddressButton extends StatelessWidget {
  final String addressId;
  final Function onAddressRemoved;
  const RemoveAddressButton(
      {Key key, @required this.addressId, @required this.onAddressRemoved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final removeAddressArguments = RemoveAddressArguments(id: addressId);

    return Mutation(
        options: MutationOptions(
          documentNode: RemoveAddressMutation().document,
          variables: removeAddressArguments.toJson(),
          onCompleted: (data) {
            onAddressRemoved();
            FlushbarHelper.createSuccess(
              message: 'Address has been removed',
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
                removeAddressArguments.toJson(),
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
