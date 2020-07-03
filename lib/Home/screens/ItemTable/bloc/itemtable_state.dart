part of 'itemtable_bloc.dart';

@immutable
abstract class ItemTableState extends Equatable {
  @override
  List<Object> get props => [];
}

class ItemTableInitial extends ItemTableState {}

class ItemTableSuccess extends ItemTableState {
  final List<ShoppingItem> items;

  ItemTableSuccess(this.items);

  @override
  List<Object> get props => [items];
}

class ItemTableError extends ItemTableState {}
