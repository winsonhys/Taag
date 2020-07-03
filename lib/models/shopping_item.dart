import 'package:equatable/equatable.dart';

class ShoppingItem extends Equatable {
  final String id;
  final String name;
  final String imageUri;

  ShoppingItem(this.id, this.name, this.imageUri);

  @override
  List<Object> get props => [id, name, imageUri];
}
