import 'package:Taag/Cart/widgets/CheckoutHeader.dart';
import 'package:flutter/material.dart';
import 'package:Taag/Home/widgets/ItemTable/ItemTable.dart';
import 'package:Taag/common/widgets/ThreeDimensionalDrawer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return ThreeDimensionalDrawer(
        titleWidget: Text(
          'Taag',
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
        child: SlidingUpPanel(
          backdropEnabled: true,
          controller: _panelController,
          minHeight: 80,
          collapsed: CheckoutHeader(totalPrice: 0),
          panel: Center(
            child: Text('This is the sliding Widget',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black)),
          ),
          borderRadius: BorderRadiusDirectional.only(
              topStart: const Radius.circular(20),
              topEnd: const Radius.circular(20)),
          body: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: ItemTable(),
              )),
        ));
  }
}
