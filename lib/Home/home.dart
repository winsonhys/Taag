import 'package:flutter/material.dart';
import 'package:longzongbuy/Home/common/widgets/ThreeDimensionalDrawer.dart';
import 'package:longzongbuy/Home/screens/ItemTable/itemTable.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThreeDimensionalDrawer(
      titleWidget: Hero(
        tag: "appTitle",
        child: Text(
          'Taag',
          style: Theme.of(context).textTheme.headline5,
          textAlign: TextAlign.center,
        ),
      ),
      child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: ItemTable(),
          )),
    );
  }
}
