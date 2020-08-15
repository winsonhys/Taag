import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:Taag/ItemDetails/widgets/AddToCartButton/AddToCartButtonView.dart';
import 'package:provider/provider.dart';

class AddToCartButton extends StatelessWidget {
  final String itemId;

  const AddToCartButton({
    @required this.itemId,
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
                runMutation({
                  "itemId": this.itemId,
                  "buyerId": context.read<UserProvider>().user.id
                });
              });
        });
  }
}
