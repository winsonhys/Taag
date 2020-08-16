import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CheckoutHeader extends StatelessWidget {
  const CheckoutHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Lottie.asset("assets/lottie/checkout.json"),
          Text("Checkout",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black)),
        ],
      ),
    );
  }
}
