import 'package:equatable/equatable.dart';

class ShoppingItem extends Equatable {
  final String id;
  final String name;
  final String imageUri;
  final String price;

  ShoppingItem(this.id, this.name, this.imageUri, this.price);

  @override
  List<Object> get props => [id, name, imageUri, price];
}
