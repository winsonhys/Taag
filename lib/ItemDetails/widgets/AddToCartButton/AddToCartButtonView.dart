import 'package:flutter/material.dart';

class AddToCartButtonView extends StatelessWidget {
  final Function addToCart;
  final bool loading;

  const AddToCartButtonView({
    @required this.addToCart,
    @required this.loading,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      child: SizedBox(
        child: FloatingActionButton(
          heroTag: 'unq1',
          onPressed: addToCart,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).accentColor,
          child: loading
              ? CircularProgressIndicator()
              : const Icon(Icons.add_shopping_cart, size: 36.0),
        ),
      ),
    );
  }
}
