import 'package:Taag/UserProfile/screens/Addresses/AddressesView.dart';
import 'package:Taag/common/containers/ScreenContainer.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:Taag/common/widgets/ListLoadingState.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        title: 'Payment Methods',
        body: Query(
            options: QueryOptions(
              documentNode: GetAddressesQuery().document,
            ),
            builder: (result, {fetchMore, refetch}) {
              if (result.loading) {
                return ListLoadingState();
              }
              final List<AddressMixin> addresses =
                  GetAddresses$Query.fromJson(result.data).getAddresses;

              return AddressView(
                addresses: addresses,
              );
            }));
  }
}
