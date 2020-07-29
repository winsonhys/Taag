import 'package:flutter/material.dart';
import 'package:longzongbuy/Home/screens/ItemTable/itemTable.dart';
import 'package:longzongbuy/common/widgets/ThreeDimensionalDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThreeDimensionalDrawer(
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
    );
  }
}
