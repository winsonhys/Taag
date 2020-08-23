import 'package:Taag/Cart/widgets/CheckoutHeader.dart';
import 'package:Taag/Home/widgets/ItemTable/ItemTable.dart';
import 'package:Taag/common/widgets/ThreeDimensionalDrawer.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeView extends StatelessWidget {
  final _panelController = PanelController();
  final double subtotal;
  HomeView({Key key, @required this.subtotal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final panel = SlidingUpPanel(
        backdropEnabled: false,
        controller: _panelController,
        minHeight: 80,
        collapsed: CheckoutHeader(totalPrice: subtotal),
        panel: Center(
          child: Text('This the sliding Widget',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.black)),
        ),
        borderRadius: BorderRadiusDirectional.only(
            topStart: const Radius.circular(20),
            topEnd: const Radius.circular(20)),
        body: ThreeDimensionalDrawer(
          titleWidget: Text(
            'Taag',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          child: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: ItemTable(),
              )),
        ));
    return panel;
  }
}
