import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: SizedBox(
        child: FloatingActionButton(
          heroTag: 'unq1',
          onPressed: () {},
          materialTapTargetSize: MaterialTapTargetSize.padded,
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).accentColor,
          child: const Icon(Icons.add_shopping_cart, size: 36.0),
        ),
      ),
    );
  }
}
