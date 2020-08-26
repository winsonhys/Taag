// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin CreditCardMixin {
  String brand;
  double exp_month;
  double exp_year;
  String last4;
}
mixin OrderMixin {
  String id;
  String ownerId;
  OrderMixin$CartItemCount cartItemCount;
  double price;
  String paymentIntentId;
}
mixin CartItemCountMixin {
  String id;
  String orderId;
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
  String stripe_cust_id;
}

@JsonSerializable(explicitToJson: true)
class AddPaymentInfo$Mutation$AddPaymentInfo$Card
    with EquatableMixin, CreditCardMixin {
  AddPaymentInfo$Mutation$AddPaymentInfo$Card();

  factory AddPaymentInfo$Mutation$AddPaymentInfo$Card.fromJson(
          Map<String, dynamic> json) =>
      _$AddPaymentInfo$Mutation$AddPaymentInfo$CardFromJson(json);

  @override
  List<Object> get props => [brand, exp_month, exp_year, last4];
  Map<String, dynamic> toJson() =>
      _$AddPaymentInfo$Mutation$AddPaymentInfo$CardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddPaymentInfo$Mutation$AddPaymentInfo with EquatableMixin {
  AddPaymentInfo$Mutation$AddPaymentInfo();

  factory AddPaymentInfo$Mutation$AddPaymentInfo.fromJson(
          Map<String, dynamic> json) =>
      _$AddPaymentInfo$Mutation$AddPaymentInfoFromJson(json);

  AddPaymentInfo$Mutation$AddPaymentInfo$Card card;

  @override
  List<Object> get props => [card];
  Map<String, dynamic> toJson() =>
      _$AddPaymentInfo$Mutation$AddPaymentInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddPaymentInfo$Mutation with EquatableMixin {
  AddPaymentInfo$Mutation();

  factory AddPaymentInfo$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddPaymentInfo$MutationFromJson(json);

  AddPaymentInfo$Mutation$AddPaymentInfo addPaymentInfo;

  @override
  List<Object> get props => [addPaymentInfo];
  Map<String, dynamic> toJson() => _$AddPaymentInfo$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToOrder$Mutation$AddToOrder with EquatableMixin, OrderMixin {
  AddToOrder$Mutation$AddToOrder();

  factory AddToOrder$Mutation$AddToOrder.fromJson(Map<String, dynamic> json) =>
      _$AddToOrder$Mutation$AddToOrderFromJson(json);

  @override
  List<Object> get props =>
      [id, ownerId, cartItemCount, price, paymentIntentId];
  Map<String, dynamic> toJson() => _$AddToOrder$Mutation$AddToOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToOrder$Mutation with EquatableMixin {
  AddToOrder$Mutation();

  factory AddToOrder$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToOrder$MutationFromJson(json);

  List<AddToOrder$Mutation$AddToOrder> addToOrder;

  @override
  List<Object> get props => [addToOrder];
  Map<String, dynamic> toJson() => _$AddToOrder$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMixin$CartItemCount with EquatableMixin, CartItemCountMixin {
  OrderMixin$CartItemCount();

  factory OrderMixin$CartItemCount.fromJson(Map<String, dynamic> json) =>
      _$OrderMixin$CartItemCountFromJson(json);

  @override
  List<Object> get props => [id, orderId, price, count, shopItem];
  Map<String, dynamic> toJson() => _$OrderMixin$CartItemCountToJson(this);
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
  List<Object> get props => [id, stripe_cust_id];
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
class AllShopItems$Query$ShopItems with EquatableMixin, ShopItemMixin {
  AllShopItems$Query$ShopItems();

  factory AllShopItems$Query$ShopItems.fromJson(Map<String, dynamic> json) =>
      _$AllShopItems$Query$ShopItemsFromJson(json);

  @override
  List<Object> get props => [id, name, description, price, imageUrl, shop];
  Map<String, dynamic> toJson() => _$AllShopItems$Query$ShopItemsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllShopItems$Query with EquatableMixin {
  AllShopItems$Query();

  factory AllShopItems$Query.fromJson(Map<String, dynamic> json) =>
      _$AllShopItems$QueryFromJson(json);

  List<AllShopItems$Query$ShopItems> shopItems;

  @override
  List<Object> get props => [shopItems];
  Map<String, dynamic> toJson() => _$AllShopItems$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPaymentInfo$Query$GetPaymentInfo$BillingDetails$Address
    with EquatableMixin {
  GetPaymentInfo$Query$GetPaymentInfo$BillingDetails$Address();

  factory GetPaymentInfo$Query$GetPaymentInfo$BillingDetails$Address.fromJson(
          Map<String, dynamic> json) =>
      _$GetPaymentInfo$Query$GetPaymentInfo$BillingDetails$AddressFromJson(
          json);

  String line1;

  String line2;

  @override
  List<Object> get props => [line1, line2];
  Map<String, dynamic> toJson() =>
      _$GetPaymentInfo$Query$GetPaymentInfo$BillingDetails$AddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPaymentInfo$Query$GetPaymentInfo$BillingDetails with EquatableMixin {
  GetPaymentInfo$Query$GetPaymentInfo$BillingDetails();

  factory GetPaymentInfo$Query$GetPaymentInfo$BillingDetails.fromJson(
          Map<String, dynamic> json) =>
      _$GetPaymentInfo$Query$GetPaymentInfo$BillingDetailsFromJson(json);

  GetPaymentInfo$Query$GetPaymentInfo$BillingDetails$Address address;

  @override
  List<Object> get props => [address];
  Map<String, dynamic> toJson() =>
      _$GetPaymentInfo$Query$GetPaymentInfo$BillingDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPaymentInfo$Query$GetPaymentInfo$Card with EquatableMixin {
  GetPaymentInfo$Query$GetPaymentInfo$Card();

  factory GetPaymentInfo$Query$GetPaymentInfo$Card.fromJson(
          Map<String, dynamic> json) =>
      _$GetPaymentInfo$Query$GetPaymentInfo$CardFromJson(json);

  String brand;

  double exp_month;

  double exp_year;

  String last4;

  @override
  List<Object> get props => [brand, exp_month, exp_year, last4];
  Map<String, dynamic> toJson() =>
      _$GetPaymentInfo$Query$GetPaymentInfo$CardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPaymentInfo$Query$GetPaymentInfo with EquatableMixin {
  GetPaymentInfo$Query$GetPaymentInfo();

  factory GetPaymentInfo$Query$GetPaymentInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetPaymentInfo$Query$GetPaymentInfoFromJson(json);

  GetPaymentInfo$Query$GetPaymentInfo$BillingDetails billing_details;

  GetPaymentInfo$Query$GetPaymentInfo$Card card;

  @override
  List<Object> get props => [billing_details, card];
  Map<String, dynamic> toJson() =>
      _$GetPaymentInfo$Query$GetPaymentInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPaymentInfo$Query with EquatableMixin {
  GetPaymentInfo$Query();

  factory GetPaymentInfo$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentInfo$QueryFromJson(json);

  List<GetPaymentInfo$Query$GetPaymentInfo> getPaymentInfo;

  @override
  List<Object> get props => [getPaymentInfo];
  Map<String, dynamic> toJson() => _$GetPaymentInfo$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId
    with EquatableMixin, OrderMixin {
  FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId();

  factory FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId.fromJson(
          Map<String, dynamic> json) =>
      _$FindOrdersFromOwnerId$Query$FindOrdersFromOwnerIdFromJson(json);

  @override
  List<Object> get props =>
      [id, ownerId, cartItemCount, price, paymentIntentId];
  Map<String, dynamic> toJson() =>
      _$FindOrdersFromOwnerId$Query$FindOrdersFromOwnerIdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindOrdersFromOwnerId$Query with EquatableMixin {
  FindOrdersFromOwnerId$Query();

  factory FindOrdersFromOwnerId$Query.fromJson(Map<String, dynamic> json) =>
      _$FindOrdersFromOwnerId$QueryFromJson(json);

  List<FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId> findOrdersFromOwnerId;

  @override
  List<Object> get props => [findOrdersFromOwnerId];
  Map<String, dynamic> toJson() => _$FindOrdersFromOwnerId$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindUserById$Query$FindUserById with EquatableMixin, UserDataMixin {
  FindUserById$Query$FindUserById();

  factory FindUserById$Query$FindUserById.fromJson(Map<String, dynamic> json) =>
      _$FindUserById$Query$FindUserByIdFromJson(json);

  @override
  List<Object> get props => [id, stripe_cust_id];
  Map<String, dynamic> toJson() =>
      _$FindUserById$Query$FindUserByIdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindUserById$Query with EquatableMixin {
  FindUserById$Query();

  factory FindUserById$Query.fromJson(Map<String, dynamic> json) =>
      _$FindUserById$QueryFromJson(json);

  FindUserById$Query$FindUserById findUserById;

  @override
  List<Object> get props => [findUserById];
  Map<String, dynamic> toJson() => _$FindUserById$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindOneShopItem$Query$ShopItem with EquatableMixin, ShopItemMixin {
  FindOneShopItem$Query$ShopItem();

  factory FindOneShopItem$Query$ShopItem.fromJson(Map<String, dynamic> json) =>
      _$FindOneShopItem$Query$ShopItemFromJson(json);

  @override
  List<Object> get props => [id, name, description, price, imageUrl, shop];
  Map<String, dynamic> toJson() => _$FindOneShopItem$Query$ShopItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindOneShopItem$Query with EquatableMixin {
  FindOneShopItem$Query();

  factory FindOneShopItem$Query.fromJson(Map<String, dynamic> json) =>
      _$FindOneShopItem$QueryFromJson(json);

  FindOneShopItem$Query$ShopItem shopItem;

  @override
  List<Object> get props => [shopItem];
  Map<String, dynamic> toJson() => _$FindOneShopItem$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddPaymentInfoArguments extends JsonSerializable with EquatableMixin {
  AddPaymentInfoArguments({@required this.token, @required this.stripeCustId});

  factory AddPaymentInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$AddPaymentInfoArgumentsFromJson(json);

  final String token;

  final String stripeCustId;

  @override
  List<Object> get props => [token, stripeCustId];
  Map<String, dynamic> toJson() => _$AddPaymentInfoArgumentsToJson(this);
}

class AddPaymentInfoMutation
    extends GraphQLQuery<AddPaymentInfo$Mutation, AddPaymentInfoArguments> {
  AddPaymentInfoMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'addPaymentInfo'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'token')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'stripeCustId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'addPaymentInfo'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'getPaymentInfoInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'token'),
                          value: VariableNode(name: NameNode(value: 'token'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'stripe_cust_id'),
                          value: VariableNode(
                              name: NameNode(value: 'stripeCustId')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'card'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                          name: NameNode(value: 'CreditCard'), directives: [])
                    ]))
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'CreditCard'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'StripeCard'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'brand'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'exp_month'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'exp_year'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'last4'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'addPaymentInfo';

  @override
  final AddPaymentInfoArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AddPaymentInfo$Mutation parse(Map<String, dynamic> json) =>
      AddPaymentInfo$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddToOrderArguments extends JsonSerializable with EquatableMixin {
  AddToOrderArguments({@required this.itemId, @required this.buyerId});

  factory AddToOrderArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToOrderArgumentsFromJson(json);

  final String itemId;

  final String buyerId;

  @override
  List<Object> get props => [itemId, buyerId];
  Map<String, dynamic> toJson() => _$AddToOrderArgumentsToJson(this);
}

class AddToOrderMutation
    extends GraphQLQuery<AddToOrder$Mutation, AddToOrderArguments> {
  AddToOrderMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'addToOrder'),
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
              name: NameNode(value: 'addToOrder'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'addToOrderInput'),
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
                    name: NameNode(value: 'Order'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Order'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Order'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'ownerId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'cartItemCount'),
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
              name: NameNode(value: 'paymentIntentId'),
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
              name: NameNode(value: 'orderId'),
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
  final String operationName = 'addToOrder';

  @override
  final AddToOrderArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AddToOrder$Mutation parse(Map<String, dynamic> json) =>
      AddToOrder$Mutation.fromJson(json);
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
              name: NameNode(value: 'stripe_cust_id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
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

class AllShopItemsQuery
    extends GraphQLQuery<AllShopItems$Query, JsonSerializable> {
  AllShopItemsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'allShopItems'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'shopItems'),
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
  final String operationName = 'allShopItems';

  @override
  List<Object> get props => [document, operationName];
  @override
  AllShopItems$Query parse(Map<String, dynamic> json) =>
      AllShopItems$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPaymentInfoArguments extends JsonSerializable with EquatableMixin {
  GetPaymentInfoArguments({@required this.stripe_cust_id});

  factory GetPaymentInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentInfoArgumentsFromJson(json);

  final String stripe_cust_id;

  @override
  List<Object> get props => [stripe_cust_id];
  Map<String, dynamic> toJson() => _$GetPaymentInfoArgumentsToJson(this);
}

class GetPaymentInfoQuery
    extends GraphQLQuery<GetPaymentInfo$Query, GetPaymentInfoArguments> {
  GetPaymentInfoQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getPaymentInfo'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'stripe_cust_id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'getPaymentInfo'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'getPaymentInfoInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'stripe_cust_id'),
                          value: VariableNode(
                              name: NameNode(value: 'stripe_cust_id')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'billing_details'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'address'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'line1'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'line2'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ])),
                FieldNode(
                    name: NameNode(value: 'card'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'brand'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'exp_month'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'exp_year'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'last4'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'getPaymentInfo';

  @override
  final GetPaymentInfoArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetPaymentInfo$Query parse(Map<String, dynamic> json) =>
      GetPaymentInfo$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindOrdersFromOwnerIdArguments extends JsonSerializable
    with EquatableMixin {
  FindOrdersFromOwnerIdArguments({@required this.ownerId});

  factory FindOrdersFromOwnerIdArguments.fromJson(Map<String, dynamic> json) =>
      _$FindOrdersFromOwnerIdArgumentsFromJson(json);

  final String ownerId;

  @override
  List<Object> get props => [ownerId];
  Map<String, dynamic> toJson() => _$FindOrdersFromOwnerIdArgumentsToJson(this);
}

class FindOrdersFromOwnerIdQuery extends GraphQLQuery<
    FindOrdersFromOwnerId$Query, FindOrdersFromOwnerIdArguments> {
  FindOrdersFromOwnerIdQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'findOrdersFromOwnerId'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'ownerId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'findOrdersFromOwnerId'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'ownerId'),
                    value: VariableNode(name: NameNode(value: 'ownerId')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Order'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Order'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Order'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'ownerId'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'cartItemCount'),
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
              name: NameNode(value: 'paymentIntentId'),
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
              name: NameNode(value: 'orderId'),
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
  final String operationName = 'findOrdersFromOwnerId';

  @override
  final FindOrdersFromOwnerIdArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  FindOrdersFromOwnerId$Query parse(Map<String, dynamic> json) =>
      FindOrdersFromOwnerId$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindUserByIdArguments extends JsonSerializable with EquatableMixin {
  FindUserByIdArguments({@required this.id});

  factory FindUserByIdArguments.fromJson(Map<String, dynamic> json) =>
      _$FindUserByIdArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$FindUserByIdArgumentsToJson(this);
}

class FindUserByIdQuery
    extends GraphQLQuery<FindUserById$Query, FindUserByIdArguments> {
  FindUserByIdQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'findUserById'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'findUserById'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(name: NameNode(value: 'id')))
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
              name: NameNode(value: 'stripe_cust_id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'findUserById';

  @override
  final FindUserByIdArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  FindUserById$Query parse(Map<String, dynamic> json) =>
      FindUserById$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindOneShopItemArguments extends JsonSerializable with EquatableMixin {
  FindOneShopItemArguments({@required this.id});

  factory FindOneShopItemArguments.fromJson(Map<String, dynamic> json) =>
      _$FindOneShopItemArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$FindOneShopItemArgumentsToJson(this);
}

class FindOneShopItemQuery
    extends GraphQLQuery<FindOneShopItem$Query, FindOneShopItemArguments> {
  FindOneShopItemQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'findOneShopItem'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'shopItem'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: VariableNode(name: NameNode(value: 'id')))
                    ]))
              ],
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
  final String operationName = 'findOneShopItem';

  @override
  final FindOneShopItemArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  FindOneShopItem$Query parse(Map<String, dynamic> json) =>
      FindOneShopItem$Query.fromJson(json);
}
