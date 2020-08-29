import 'package:Taag/UserProfile/screens/PaymentMethods/widgets/PaymentMethodTile.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PaymentMethodsView extends StatelessWidget {
  final List<PaymentMethodMixin> paymentMethods;
  final Function refetch;
  const PaymentMethodsView(
      {Key key, @required this.paymentMethods, @required this.refetch})
      : super(key: key);

  Widget _buildListItem(context, index) {
    if (index == paymentMethods.length) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: RaisedButton.icon(
            onPressed: () =>
                Get.toNamed('AddCreditCard').then((value) => refetch()),
            icon: Icon(Icons.add),
            label: Text('Add a credit card')),
      );
    }
    final card = paymentMethods[index];
    return PaymentMethodTile(
      paymentMethod: card,
      onPaymentMethodRemoved: refetch,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: paymentMethods.length + 1,
        itemBuilder: _buildListItem,
        separatorBuilder: (context, index) => const Divider());
  }
}
