import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BuyNowButtonView extends StatelessWidget {
  final Function addToCart;
  final bool loading;

  const BuyNowButtonView({
    @required this.addToCart,
    @required this.loading,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      child: SizedBox(
        child: FloatingActionButton.extended(
          heroTag: 'unq1',
          onPressed: addToCart,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).accentColor,
          label: Text('Buy Now'),
          icon: loading
              ? CircularProgressIndicator()
              : const Icon(FontAwesome5.money_bill_alt, size: 24.0),
        ),
      ),
    );
  }
}
