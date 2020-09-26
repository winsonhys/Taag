import 'package:Taag/UserProfile/screens/AddAddress/AddAddressView.dart';
import 'package:Taag/UserProfile/screens/AddAddress/providers/AddressProvider.dart';
import 'package:Taag/common/containers/ScreenContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        title: 'Add Address',
        body: ChangeNotifierProvider(
            create: (_) => AddressProvider(), child: AddAddressView()));
  }
}
