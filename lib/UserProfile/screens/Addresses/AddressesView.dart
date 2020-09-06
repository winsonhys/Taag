import 'package:Taag/UserProfile/screens/Addresses/widgets/AddressTile.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AddressView extends StatelessWidget {
  final List<AddressMixin> addresses;
  final Function refetch;
  const AddressView({Key key, @required this.addresses, @required this.refetch})
      : super(key: key);

  Widget _buildListItem(context, index) {
    if (index == addresses.length) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: RaisedButton.icon(
            onPressed: () =>
                Get.toNamed('AddAddress').then((value) => refetch()),
            icon: Icon(Icons.add),
            label: Text('Add a new address')),
      );
    }

    final address = addresses[index];
    return AddressTile(
      address: address,
      onAddressRemoved: refetch,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          itemCount: addresses.length + 1,
          itemBuilder: _buildListItem,
          separatorBuilder: (context, index) => const Divider()),
    );
  }
}
