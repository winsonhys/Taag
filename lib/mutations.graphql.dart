// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'mutations.graphql.g.dart';

mixin CartMixin {
  String id;
  List<CartMixin$CartItemCounts> cartItemCounts;
  double price;
  String chargeId;
}
mixin CartItemCountMixin {
  String id;
  String cartId;
  double price;
  int count;
  CartItemCountMixin$ShopItem shopItem;
}
mixin ShopItemMixin {
  String id;
  String name;
  String description;
  double price;
  String imageUrl;
  ShopItemMixin$Shop shop;
}

@JsonSerializable(explicitToJson: true)
class AddToCart$Mutation$AddToCart with EquatableMixin, CartMixin {
  AddToCart$Mutation$AddToCart();

  factory AddToCart$Mutation$AddToCart.fromJson(Map<String, dynamic> json) =>
      _$AddToCart$Mutation$AddToCartFromJson(json);

  @override
  List<Object> get props => [id, cartItemCounts, price, chargeId];
  Map<String, dynamic> toJson() => _$AddToCart$Mutation$AddToCartToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToCart$Mutation with EquatableMixin {
  AddToCart$Mutation();

  factory AddToCart$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToCart$MutationFromJson(json);

  AddToCart$Mutation$AddToCart addToCart;

  @override
  List<Object> get props => [addToCart];
  Map<String, dynamic> toJson() => _$AddToCart$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CartMixin$CartItemCounts with EquatableMixin, CartItemCountMixin {
  CartMixin$CartItemCounts();

  factory CartMixin$CartItemCounts.fromJson(Map<String, dynamic> json) =>
      _$CartMixin$CartItemCountsFromJson(json);

  @override
  List<Object> get props => [id, cartId, price, count, shopItem];
  Map<String, dynamic> toJson() => _$CartMixin$CartItemCountsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CartItemCountMixin$ShopItem with EquatableMixin, ShopItemMixin {
  CartItemCountMixin$ShopItem();

  factory CartItemCountMixin$ShopItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemCountMixin$ShopItemFromJson(json);

  @override
  List<Object> get props => [id, name, description, price, imageUrl, shop];
  Map<String, dynamic> toJson() => _$CartItemCountMixin$ShopItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShopItemMixin$Shop with EquatableMixin {
  ShopItemMixin$Shop();

  factory ShopItemMixin$Shop.fromJson(Map<String, dynamic> json) =>
      _$ShopItemMixin$ShopFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() => _$ShopItemMixin$ShopToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToCartArguments extends JsonSerializable with EquatableMixin {
  AddToCartArguments({@required this.itemId, @required this.buyerId});

  factory AddToCartArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToCartArgumentsFromJson(json);

  final String itemId;

  final String buyerId;

  @override
  List<Object> get props => [itemId, buyerId];
  Map<String, dynamic> toJson() => _$AddToCartArgumentsToJson(this);
}

class AddToCartMutation
    extends GraphQLQuery<AddToCart$Mutation, AddToCartArguments> {
  AddToCartMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'addToCart'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'itemId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'buyerId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'addToCart'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'addToCartInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'item_id'),
                          value: VariableNode(name: NameNode(value: 'itemId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'buyer_id'),
                          value: VariableNode(name: NameNode(value: 'buyerId')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Cart'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Cart'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'Cart'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'cartItemCounts'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'CartItemCount'), directives: [])
              ])),
          FieldNode(
              name: NameNode(value: 'price'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'chargeId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'CartItemCount'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'CartItemCount'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'cartId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'price'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'count'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'shopItem'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'ShopItem'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'ShopItem'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'ShopItem'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'price'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'imageUrl'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'shop'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'username'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'addToCart';

  @override
  final AddToCartArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AddToCart$Mutation parse(Map<String, dynamic> json) =>
      AddToCart$Mutation.fromJson(json);
}
