import 'package:flutter/material.dart';

class AddAFriendButtonView extends StatelessWidget {
  const AddAFriendButtonView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: FloatingActionButton(
          heroTag: 'unq2',
          onPressed: () {},
          materialTapTargetSize: MaterialTapTargetSize.padded,
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).accentColor,
          child: const Icon(Icons.person_add, size: 36.0),
        ),
      ),
    );
  }
}
