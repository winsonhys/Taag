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
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                          imageUrl: cartItemCount.shopItem.imageUrl,
                          placeholder: (context, url) =>
                              Lottie.asset("assets/lottie/corgi.json"))),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        cartItemCount.shopItem.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Expanded(
                        child: FormField(
                          initialValue: cartItemCount.count,
                          builder: (field) {
                            return Row(children: <Widget>[
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
                                      onPressed: () {
                                        print('hasa');
                                      },
                                    )),
                              ),
                              Text(
                                field.value.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(
                                        color: Theme.of(context).primaryColor),
                              ),
                              Material(
                                // Needed to make ink work as Material is doing the splashing
                                child: Ink(
                                    decoration: ShapeDecoration(
                                      color: Theme.of(context).primaryColor,
                                      shape: CircleBorder(),
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.add),
                                      color: Colors.white,
                                      onPressed: () {
                                        print('hasa');
                                      },
                                    )),
                              ),
                            ]);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
