import 'package:Taag/graphql/mutations.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:Taag/ItemDetails/widgets/AddToCartButton/AddToCartButtonView.dart';

class AddToCartButton extends StatelessWidget {
  final String itemId;
  final String buyerId;

  const AddToCartButton({
    @required this.itemId,
    @required this.buyerId,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mutation(
        options: MutationOptions(
          documentNode: AddToCartMutation().document,
        ),
        builder: (RunMutation runMutation, result) {
          return AddToCartButtonView(
              loading: result.loading,
              addToCart: () {
                runMutation({"itemId": this.itemId, "buyerId": this.buyerId});
              });
        });
  }
}
