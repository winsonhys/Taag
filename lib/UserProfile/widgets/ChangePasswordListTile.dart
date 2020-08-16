import 'package:Taag/UserProfile/providers/ChangePasswordProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePasswordListTile extends StatefulWidget {
  const ChangePasswordListTile({Key key}) : super(key: key);

  @override
  _ChangePasswordListTileState createState() => _ChangePasswordListTileState();
}

class _ChangePasswordListTileState extends State<ChangePasswordListTile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ChangePasswordProvider(),
      child: Form(
        key: _formKey,
        child: ExpansionTile(
          title: Text(
            'Reset Password',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Colors.white),
          ),
          childrenPadding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            TextFormField(
                onSaved: (newValue) => context
                    .watch<ChangePasswordProvider>()
                    .currentPassword = newValue,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Current Password'),
                validator: (value) => value.isEmpty
                    ? 'Please enter some your current password'
                    : null),
            TextFormField(
                onSaved: (newValue) => context
                    .watch<ChangePasswordProvider>()
                    .newPassword = newValue,
                decoration: InputDecoration(hintText: 'New Password'),
                validator: (value) => value.isEmpty
                    ? 'Please enter some your current password'
                    : null),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Confirm New Password'),
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
      ),
    );
  }
}
