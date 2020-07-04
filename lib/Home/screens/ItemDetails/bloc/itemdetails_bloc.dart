import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:longzongbuy/models/shopping_item.dart';

part 'itemdetails_event.dart';
part 'itemdetails_state.dart';

class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  ItemDetailsBloc() : super(ItemDetailsInitial());

  @override
  Stream<ItemDetailsState> mapEventToState(
    ItemDetailsEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is ItemDetailsFetched) {
      yield ItemDetailsSuccess(ShoppingItem(
          "1",
          "test1",
          "https://s3.gsxtr.com/i/pr/t-shirt-patagonia-p-6-logo-responsibili-tee-t-shirt-classic-navy-130721-450-2.jpg",
          "1",
          desc: "This is a description"));
    }
  }
}
