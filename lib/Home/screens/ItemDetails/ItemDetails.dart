import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longzongbuy/Home/screens/ItemDetails/bloc/itemdetails_bloc.dart';

class ItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final String itemId = ModalRoute.of(context).settings.arguments;

    return BlocBuilder<ItemDetailsBloc, ItemDetailsState>(
        builder: (context, state) {
      if (state is ItemDetailsInitial) {
        BlocProvider.of<ItemDetailsBloc>(context)
            .add(ItemDetailsFetched(itemId));
      }
      if (state is ItemDetailsSuccess) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(elevation: 0),
        );
      }
    });
  }
}
