import 'package:Taag/Cart/widgets/CartItemCard/CartItemCard.dart';
import 'package:Taag/Cart/widgets/CheckoutHeader.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CartView extends StatelessWidget {
  final FindCartFromOwnerId$Query data;
  final _panelController = PanelController();
  CartView({@required this.data, Key key}) : super(key: key) {
    final List<CartItemCountMixin> cartItemCounts =
        data.findCartFromOwnerId.cartItemCounts;
    if (cartItemCounts.isEmpty) {
      _panelController.hide();
    }
  }

  Widget _buildChildren(int index) {
    final List<CartItemCountMixin> cartItemCounts =
        data.findCartFromOwnerId.cartItemCounts;
    return CartItemCard(cartItemCount: cartItemCounts[index]);
  }

  @override
  Widget build(BuildContext context) {
    final List<CartItemCountMixin> cartItemCounts =
        data.findCartFromOwnerId.cartItemCounts;
    return SlidingUpPanel(
      backdropEnabled: true,
      controller: _panelController,
      minHeight: 80,
      collapsed: CheckoutHeader(totalPrice: data.findCartFromOwnerId.price),
      panel: Center(
        child: Text('This is the sliding Widget',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.black)),
      ),
      borderRadius: BorderRadiusDirectional.circular(24),
      body: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: ListView.builder(
          itemCount: cartItemCounts.length,
          itemBuilder: (context, index) => _buildChildren(index),
        ),
      ),
    );
  }
}
