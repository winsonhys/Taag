part of 'itemdetails_bloc.dart';

abstract class ItemDetailsState extends Equatable {
  @override
  List<Object> get props => [];
}

class ItemDetailsInitial extends ItemDetailsState {}

class ItemDetailsError extends ItemDetailsState {}

class ItemDetailsSuccess extends ItemDetailsState {
  final ShoppingItem item;

  ItemDetailsSuccess(this.item);

  @override
  List<Object> get props => [item];
}
