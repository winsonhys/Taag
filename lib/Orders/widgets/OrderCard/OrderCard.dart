import 'package:Taag/Orders/widgets/OrderCard/widgets/ItemCountButtons.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderCard extends StatelessWidget {
  final OrderMixin order;
  const OrderCard({@required this.order, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return order.orderItemCount.count > 0
        ? Container(
            constraints: BoxConstraints(maxHeight: 200),
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                        imageUrl: order.orderItemCount.shopItem.imageUrl,
                        placeholder: (context, url) =>
                            Lottie.asset('assets/lottie/corgi.json'))),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        order.orderItemCount.shopItem.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        '\$${order.orderItemCount.shopItem.price.toString()}',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Theme.of(context).accentColor),
                      ),
                      ItemCountButtons(orderItemCount: order.orderItemCount)
                    ],
                  ),
                )
              ],
            ))
        : Container(width: 0, height: 0);
  }
}
