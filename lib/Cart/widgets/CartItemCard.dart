import 'package:Taag/graphql/api.graphql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartItemCard extends StatelessWidget {
  final CartItemCountMixin cartItemCount;
  const CartItemCard({@required this.cartItemCount, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            constraints: BoxConstraints(maxHeight: 140),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                    imageUrl: cartItemCount.shopItem.imageUrl,
                    placeholder: (context, url) =>
                        Lottie.asset("assets/lottie/corgi.json")))));
  }
}
