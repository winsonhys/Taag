import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CheckoutHeader extends StatelessWidget {
  final double totalPrice;
  const CheckoutHeader({Key key, @required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Lottie.asset('assets/lottie/checkout.json'),
          Text('Ship it!',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Theme.of(context).accentColor)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Subtotal',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.red)),
              Text('\$${totalPrice.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.red, fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
