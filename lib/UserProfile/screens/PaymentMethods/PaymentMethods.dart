import 'package:Taag/Auth/providers/UserProvider.dart';
import 'package:Taag/UserProfile/screens/PaymentMethods/PaymentMethodsView.dart';
import 'package:Taag/common/containers/ScreenContainer.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:Taag/common/widgets/ListLoadingState.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryArgs = GetPaymentInfoArguments(
            stripeCustId: context.watch<UserProvider>().user.stripeCustId)
        .toJson();
    return ScreenContainer(
        title: 'Payment Methods',
        body: Query(
            options: QueryOptions(
                documentNode: GetPaymentInfoQuery().document,
                variables: queryArgs),
            builder: (result, {fetchMore, refetch}) {
              if (result.loading) {
                return ListLoadingState();
              }
              final List<PaymentMethodMixin> paymentMethods =
                  GetPaymentInfo$Query.fromJson(result.data).getPaymentInfo;

              return PaymentMethodsView(
                paymentMethods: paymentMethods,
                refetch: refetch,
              );
            }));
  }
}
