import 'package:Taag/ItemDetails/widgets/BuyNowButton/BuyNowButtonView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BuyNowButton extends StatelessWidget {
  final String itemId;

  const BuyNowButton({
    @required this.itemId,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mutation(
        options: MutationOptions(
            onCompleted: (_) {
              FlushbarHelper.createSuccess(
                      message: 'Item has been added to cart')
                  .show(context);
            },
            update: (cache, result) {
              final OrderMixin order =
                  AddToOrder$Mutation.fromJson(result.data).addToOrder;
              cache.write(typenameDataIdFromObject(order), order);
            },
            documentNode: AddToOrderMutation().document,
            onError: (err) {
              FlushbarHelper.createError(message: err.graphqlErrors[0].message)
                  .show(context);
            }),
        builder: (RunMutation runMutation, result) {
          return BuyNowButtonView(
              loading: result.loading,
              addToCart: () {
                runMutation({
                  'itemId': itemId,
                });
              });
        });
  }
}
