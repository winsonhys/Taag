import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemTable/bloc/itemtable_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemTable/itemTable.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TestShop"),
        ),
        body: Center(
          child: BlocProvider(
            create: (context) => ItemTableBloc()..add(ItemTableFetched()),
            child: ItemTable(),
          ),
        ));
  }
}
