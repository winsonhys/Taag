import 'package:Taag/Orders/widgets/OrderCard/widgets/AddToOrderButton/AddToOrderButton.dart';
import 'package:Taag/Orders/widgets/OrderCard/widgets/RemoveFromOrderButton/RemoveFromOrderButton.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';

class ItemCountButtons extends StatelessWidget {
  const ItemCountButtons({
    Key key,
    @required this.orderItemCount,
  }) : super(key: key);

  final OrderItemCountMixin orderItemCount;

  @override
  Widget build(BuildContext context) {
    print(orderItemCount.count);
    return Expanded(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
          RemoveFromOrderButton(orderItemCount: orderItemCount),
          Text(
            orderItemCount.count.toString(),
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Theme.of(context).primaryColor),
          ),
          AddToOrderButton(orderItemCount: orderItemCount),
        ]));
  }
}
