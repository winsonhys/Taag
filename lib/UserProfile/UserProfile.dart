import 'package:Taag/UserProfile/widgets/ChangePasswordListTile.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  static const route = 'UserProfile';
  const UserProfile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final widgets = [ChangePasswordListTile()];
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: Text(
            'My Account',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return widgets[index];
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: widgets.length)));
  }
}
