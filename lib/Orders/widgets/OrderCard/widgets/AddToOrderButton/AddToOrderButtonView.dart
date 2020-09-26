import 'package:flutter/material.dart';

class AddToOrderButtonView extends StatelessWidget {
  final Function addToOrder;
  const AddToOrderButtonView({Key key, @required Function this.addToOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // Needed to make ink work as Material is doing the splashing
      child: Ink(
          decoration: ShapeDecoration(
            color: Theme.of(context).primaryColor,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: addToOrder,
          )),
    );
  }
}
