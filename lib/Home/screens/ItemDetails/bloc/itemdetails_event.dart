part of 'itemdetails_bloc.dart';

abstract class ItemDetailsEvent {}

class ItemDetailsFetched extends ItemDetailsEvent {
  final String itemId;
  ItemDetailsFetched(this.itemId);
}
