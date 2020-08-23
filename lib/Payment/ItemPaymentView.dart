import 'package:flutter/material.dart';

class ItemPaymentView extends StatelessWidget {
  const ItemPaymentView({Key key}) : super(key: key);

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
        body: Container());
  }
}
