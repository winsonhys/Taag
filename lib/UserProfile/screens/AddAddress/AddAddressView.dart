import 'package:Taag/UserProfile/screens/AddAddress/providers/AddressProvider.dart';
import 'package:Taag/UserProfile/screens/AddAddress/widgets/AddAddressButton/AddAddressButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class AddAddressView extends HookWidget {
  const AddAddressView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = useState(GlobalKey<FormState>());
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
      child: Form(
          key: _formKey.value,
          child: Theme(
            data: theme,
            child: Column(
              children: [
                TextFormField(
                  enabled: false,
                  initialValue: context.watch<AddressProvider>().country,
                  decoration: InputDecoration(
                      labelText: 'Country',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                TextFormField(
                  enabled: false,
                  initialValue: context.watch<AddressProvider>().city,
                  decoration: InputDecoration(
                      labelText: 'City',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                TextFormField(
                  enabled: false,
                  initialValue: context.watch<AddressProvider>().state,
                  decoration: InputDecoration(
                      labelText: 'State',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
                TextFormField(
                    onSaved: (newValue) =>
                        context.watch<AddressProvider>().line1 = newValue,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        labelText: 'Line 1',
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (value) =>
                        value.isEmpty ? 'Please enter your address' : null),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
                  onSaved: (newValue) =>
                      context.watch<AddressProvider>().line2 = newValue,
                  decoration: InputDecoration(
                    labelText: 'Line 2',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                TextFormField(
                    keyboardType: TextInputType.number,
                    onSaved: (newValue) =>
                        context.watch<AddressProvider>().postal = newValue,
                    decoration: InputDecoration(
                        labelText: 'Postal Code',
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (value) =>
                        value.isEmpty ? 'Please enter your postal code' : null),
                Row(children: [
                  Text("Set this as default address"),
                  Switch(
                      value: context.watch<AddressProvider>().isDefault,
                      onChanged: (value) =>
                          context.read<AddressProvider>().isDefault = value)
                ]),
                AddAddressButton(formKey: _formKey.value)
              ],
            ),
          )),
    );
  }
}
