import 'package:Taag/Cart/widgets/CartItemCard/widgets/ItemCountButtons.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OrderCard extends StatelessWidget {
  final OrderMixin order;
  const OrderCard({@required this.order, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    imageUrl: order.cartItemCount.shopItem.imageUrl,
                    placeholder: (context, url) =>
                        Lottie.asset('assets/lottie/corgi.json'))),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    order.cartItemCount.shopItem.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                  Text(
                    '\$${order.cartItemCount.shopItem.price.toString()}',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Theme.of(context).accentColor),
                  ),
                  ItemCountButtons(cartItemCount: order.cartItemCount)
                ],
              ),
            )
          ],
        ));
  }
}
