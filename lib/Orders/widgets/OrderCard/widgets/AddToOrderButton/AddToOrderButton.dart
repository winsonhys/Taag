import 'package:Taag/Orders/widgets/OrderCard/widgets/AddToOrderButton/AddToOrderButtonView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class AddToOrderButton extends StatelessWidget {
  final OrderItemCountMixin orderItemCount;
  const AddToOrderButton({Key key, @required this.orderItemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mutation(
      options: MutationOptions(
        documentNode: AddToOrderMutation().document,
        update: (cache, result) {
          final orderItemCount = AddToOrder$Mutation.fromJson(result.data)
              .addToOrder
              .orderItemCount;
          final orderJson = orderItemCount.toJson();
          cache.write(typenameDataIdFromObject(orderJson), orderJson);
        },
      ),
      builder: (runMutation, result) {
        return AddToOrderButtonView(addToOrder: () {
          runMutation(AddToOrderArguments(
                  itemId: orderItemCount.shopItem.id,
                  orderId: orderItemCount.orderId)
              .toJson());
        });
      },
    );
  }
}
