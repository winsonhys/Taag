import 'package:Taag/Payment/ItemPaymentView.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ItemPaymentArguments {
  final String orderId;
  ItemPaymentArguments(this.orderId);
}

class ItemPayment extends StatelessWidget {
  ItemPayment({Key key}) : super(key: key);
  final ItemPaymentArguments args = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return ItemPaymentView();
  }
}
