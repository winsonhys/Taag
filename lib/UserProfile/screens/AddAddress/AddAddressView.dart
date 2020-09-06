import 'package:Taag/UserProfile/screens/AddAddress/providers/AddressProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class AddAddressView extends HookWidget {
  const AddAddressView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = useState(GlobalKey<FormState>());
    return Form(
          key: _formKey.value,
          child: Theme(
            data: theme,
            child: ExpansionTile(
              title: Text('Reset Password',
                  style: Theme.of(context).textTheme.headline6),
              childrenPadding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                TextFormField(
                    onSaved: (newValue) => context
                        .watch<AddressProvider>()
                        .line1 = newValue,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Line 1',
                        hintStyle: TextStyle(color: Colors.white)),
                    validator: (value) => value.isEmpty
                        ? 'Please enter your address'
                        : null),
                TextFormField(
                    onSaved: (newValue) => context
                        .watch<AddressProvider>()
                        .line2 = newValue,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) => value.isEmpty
                        ? 'Please enter some your current password'
                        : null),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Confirm New Password',
                        hintStyle: TextStyle(color: Colors.white)),
                    validator: (value) => value.isEmpty
                        ? 'Please enter some your current password'
                        : null),
                RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                      }
                    },
                    child: Text(
                      'Change Password',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ))
              ],
            ),
          ))
  }
}