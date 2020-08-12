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
mixin UserDataMixin {
  String id;
  UserDataMixin$Cart cart;
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
class SignUpUser$Mutation$SignUp with EquatableMixin, UserDataMixin {
  SignUpUser$Mutation$SignUp();

  factory SignUpUser$Mutation$SignUp.fromJson(Map<String, dynamic> json) =>
      _$SignUpUser$Mutation$SignUpFromJson(json);

  @override
  List<Object> get props => [id, cart];
  Map<String, dynamic> toJson() => _$SignUpUser$Mutation$SignUpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignUpUser$Mutation with EquatableMixin {
  SignUpUser$Mutation();

  factory SignUpUser$Mutation.fromJson(Map<String, dynamic> json) =>
      _$SignUpUser$MutationFromJson(json);

  SignUpUser$Mutation$SignUp signUp;

  @override
  List<Object> get props => [signUp];
  Map<String, dynamic> toJson() => _$SignUpUser$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserDataMixin$Cart with EquatableMixin {
  UserDataMixin$Cart();

  factory UserDataMixin$Cart.fromJson(Map<String, dynamic> json) =>
      _$UserDataMixin$CartFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$UserDataMixin$CartToJson(this);
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

@JsonSerializable(explicitToJson: true)
class SignUpUserArguments extends JsonSerializable with EquatableMixin {
  SignUpUserArguments(
      {@required this.email,
      @required this.password,
      @required this.displayName,
      @required this.firstName,
      @required this.lastName,
      @required this.dob});

  factory SignUpUserArguments.fromJson(Map<String, dynamic> json) =>
      _$SignUpUserArgumentsFromJson(json);

  final String email;

  final String password;

  final String displayName;

  final String firstName;

  final String lastName;

  final DateTime dob;

  @override
  List<Object> get props =>
      [email, password, displayName, firstName, lastName, dob];
  Map<String, dynamic> toJson() => _$SignUpUserArgumentsToJson(this);
}

class SignUpUserMutation
    extends GraphQLQuery<SignUpUser$Mutation, SignUpUserArguments> {
  SignUpUserMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'signUpUser'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'password')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'displayName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'firstName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'lastName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'dob')),
              type: NamedTypeNode(
                  name: NameNode(value: 'DateTime'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'signUp'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'signUpInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'email'),
                          value: VariableNode(name: NameNode(value: 'email'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'password'),
                          value:
                              VariableNode(name: NameNode(value: 'password'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'displayName'),
                          value: VariableNode(
                              name: NameNode(value: 'displayName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'firstName'),
                          value:
                              VariableNode(name: NameNode(value: 'firstName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'lastName'),
                          value:
                              VariableNode(name: NameNode(value: 'lastName'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'dob'),
                          value: VariableNode(name: NameNode(value: 'dob')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'UserData'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'UserData'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(name: NameNode(value: 'User'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'cart'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'signUpUser';

  @override
  final SignUpUserArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  SignUpUser$Mutation parse(Map<String, dynamic> json) =>
      SignUpUser$Mutation.fromJson(json);
}
