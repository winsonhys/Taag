import 'package:flutter/material.dart';

class AddAFriendButton extends StatelessWidget {
  const AddAFriendButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: FloatingActionButton.extended(
          heroTag: 'unq2',
          onPressed: () {},
          materialTapTargetSize: MaterialTapTargetSize.padded,
          backgroundColor: Colors.white,
          foregroundColor: Theme.of(context).accentColor,
          label: Text('Taag'),
          icon: const Icon(Icons.person_add, size: 36.0),
        ),
      ),
    );
  }
}
