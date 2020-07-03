import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:longzongbuy/models/shopping_item.dart';
import 'package:meta/meta.dart';

part 'itemtable_event.dart';
part 'itemtable_state.dart';

class ItemTableBloc extends Bloc<ItemTableEvent, ItemTableState> {
  ItemTableBloc() : super(ItemTableInitial());

  @override
  Stream<ItemTableState> mapEventToState(
    ItemTableEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is ItemTableFetched) {
      yield ItemTableSuccess([
        ShoppingItem("1", "test1", ""),
        ShoppingItem("2", "test2", ""),
        ShoppingItem("3", "test3", "")
      ]);
    }
  }
}
