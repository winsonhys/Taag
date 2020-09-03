import 'package:Taag/UserProfile/screens/Addresses/widgets/AddressTile.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  final List<AddressMixin> addresses;
  const AddressView({Key key, @required this.addresses}) : super(key: key);

  Widget _buildListItem(context, index) {
    // if (index == paymentMethods.length) {
    //   return Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 36.0),
    //     child: RaisedButton.icon(
    //         onPressed: () =>
    //             Get.toNamed('AddCreditCard').then((value) => refetch()),
    //         icon: Icon(Icons.add),
    //         label: Text('Add a credit card')),
    //   );
    // }
    final address = addresses[index];
    return AddressTile(
      address: address,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: addresses.length + 1,
        itemBuilder: _buildListItem,
        separatorBuilder: (context, index) => const Divider());
  }
}
