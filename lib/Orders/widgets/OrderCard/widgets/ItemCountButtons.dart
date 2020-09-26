import 'package:Taag/Orders/widgets/OrderCard/widgets/AddToOrderButton/AddToOrderButton.dart';
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
          Material(
            // Needed to make ink work as Material is doing the splashing
            child: Ink(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.remove),
                  color: Colors.white,
                  onPressed: () {},
                )),
          ),
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
