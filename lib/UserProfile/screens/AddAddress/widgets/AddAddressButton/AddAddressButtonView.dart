import 'package:flutter/material.dart';

class AddAddressButtonView extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final bool loading;
  final Function onPress;
  const AddAddressButtonView(
      {Key key,
      @required this.formKey,
      @required this.loading,
      @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            onPress();
          }
        },
        child: loading
            ? CircularProgressIndicator()
            : Text(
                'Add Address',
                style: TextStyle(color: Theme.of(context).accentColor),
              ));
  }
}
