import 'package:flutter/material.dart';

class RemoveFromOrderButtonView extends StatelessWidget {
  const RemoveFromOrderButtonView({Key key, @required this.removeFromOrder})
      : super(key: key);
  final Function removeFromOrder;

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
            icon: Icon(Icons.remove),
            color: Colors.white,
            onPressed: removeFromOrder,
          )),
    );
  }
}
