import 'package:equatable/equatable.dart';

class ShoppingItem extends Equatable {
  final String id;
  final String name;
  final String imageUri;
  final String price;
  final String desc;
  static final String tag = "SHOPPING_ITEM";

  ShoppingItem(this.id, this.name, this.imageUri, this.price, {this.desc = ""});

  @override
  List<Object> get props => [id, name, imageUri, price];
}
