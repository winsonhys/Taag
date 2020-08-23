import 'package:Taag/Cart/widgets/CartItemCard/CartItemCard.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  List<OrderMixin> orders;
  CartView({@required this.orders, Key key}) : super(key: key);

  Widget _buildChildren(int index) {
    return OrderCard(order: orders[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        itemCount: orders.length,
        itemBuilder: (context, index) => _buildChildren(index),
      ),
    );
  }
}
