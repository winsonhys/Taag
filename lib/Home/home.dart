import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longzongbuy/Home/common/widgets/ThreeDimensionalDrawer.dart';

import 'package:longzongbuy/Home/screens/ItemTable/bloc/itemtable_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemTable/itemTable.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThreeDimensionalDrawer(
      titleWidget: Text(
        'Long zong buy',
        style: Theme.of(context).primaryTextTheme.headline6,
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
