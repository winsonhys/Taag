import 'package:Taag/UserProfile/screens/AddAddress/providers/AddressProvider.dart';
import 'package:Taag/UserProfile/screens/AddAddress/widgets/AddAddressButton/AddAddressButtonView.dart';
import 'package:Taag/graphql/api.graphql.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

class AddAddressButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const AddAddressButton({Key key, @required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mutationArgs = AddAddressArguments(
      country: context.watch<AddressProvider>().country,
      city: context.watch<AddressProvider>().city,
      line1: context.watch<AddressProvider>().line1,
      line2: context.watch<AddressProvider>().line2,
      postalCode: context.watch<AddressProvider>().postal,
      state: context.watch<AddressProvider>().state,
      isDefault: context.watch<AddressProvider>().isDefault,
    );
    return Mutation(
        options: MutationOptions(
          documentNode: AddAddressMutation().document,
          onError: (error) {
            FlushbarHelper.createError(message: error.graphqlErrors[0].message)
                .show(context);
          },
          onCompleted: (data) {
            Get.back();
          },
        ),
        builder: (runMutation, result) {
          return AddAddressButtonView(
              formKey: formKey,
              loading: result.loading,
              onPress: () => runMutation(mutationArgs.toJson()));
        });
  }
}
