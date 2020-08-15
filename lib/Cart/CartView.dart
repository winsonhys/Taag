import 'package:Taag/Cart/widgets/CartItemCard.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  final FindCartFromOwnerId$Query data;
  const CartView({@required this.data, Key key}) : super(key: key);

  List<Widget> _buildChildren() {
    final List<CartItemCountMixin> cartItemCounts =
        data.findCartFromOwnerId.cartItemCounts;
    final widgets = cartItemCounts
        .map((cartItemCount) => CartItemCard(
              cartItemCount: cartItemCount,
            ))
        .toList();
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: _buildChildren(),
      ),
    );
  }
}
