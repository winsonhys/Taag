import 'package:Taag/UserProfile/providers/ChangePasswordProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPasswordListTile extends StatefulWidget {
  const ResetPasswordListTile({Key key}) : super(key: key);

  @override
  _ResetPasswordListTileState createState() => _ResetPasswordListTileState();
}

class _ResetPasswordListTileState extends State<ResetPasswordListTile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ChangePasswordProvider(),
      child: Form(
        key: _formKey,
        child: ExpansionTile(
          title: Text('Reset Password'),
          children: [
            TextFormField(
              onSaved: 
                obscureText: true,
                decoration: InputDecoration(hintText: 'Current Password'),
                validator: (value) => value.isEmpty
                    ? 'Please enter some your current password'
                    : null
            )
            TextFormField(
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
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                  }
                },
                child: Text('Change Password'))
          ],
        ),
      ),
    );
  }
}
