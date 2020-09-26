import 'package:Taag/Orders/widgets/OrderCard/widgets/RemoveFromOrderButton/RemoveFromOrderButtonView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RemoveFromOrderButton extends StatelessWidget {
  final OrderItemCountMixin orderItemCount;
  const RemoveFromOrderButton({Key key, @required this.orderItemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mutation(
      options: MutationOptions(
        documentNode: RemoveFromOrderMutation().document,
        update: (cache, result) {
          final orderItemCount = RemoveFromOrder$Mutation.fromJson(result.data)
              .removeFromOrder
              .orderItemCount;

          final orderJson = orderItemCount.toJson();
          cache.write(typenameDataIdFromObject(orderJson), orderJson);
        },
      ),
      builder: (runMutation, result) {
        return RemoveFromOrderButtonView(removeFromOrder: () {
          runMutation(RemoveFromOrderArguments(
                  itemId: orderItemCount.shopItem.id,
                  orderId: orderItemCount.orderId)
              .toJson());
        });
      },
    );
  }
}
