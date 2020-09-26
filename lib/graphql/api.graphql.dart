// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin PaymentMethodMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  PaymentMethodMixin$Card card;
}
mixin CreditCardMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String brand;
  @JsonKey(name: 'exp_month')
  double expMonth;
  @JsonKey(name: 'exp_year')
  double expYear;
  String last4;
}
mixin OrderMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  String ownerId;
  OrderMixin$OrderItemCount orderItemCount;
  double price;
  String paymentIntentId;
}
mixin OrderItemCountMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  String orderId;
  int count;
  OrderItemCountMixin$ShopItem shopItem;
}
mixin ShopItemMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  String name;
  String description;
  double price;
  String imageUrl;
  ShopItemMixin$Shop shop;
}
mixin UserDataMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  @JsonKey(name: 'stripe_cust_id')
  String stripeCustId;
}
mixin AddressMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  String line1;
  String line2;
  @JsonKey(name: 'postal_code')
  String postalCode;
  String state;
  String city;
  String country;
}
mixin AddressWithDefaultMixin {
  @override
  @JsonKey(name: '__typename')
  String $$typename;
  String id;
  String line1;
  String line2;
  @JsonKey(name: 'postal_code')
  String postalCode;
  String state;
  String city;
  String country;
  bool isDefault;
}

@JsonSerializable(explicitToJson: true)
class AddPaymentInfo$Mutation$AddPaymentInfo
    with EquatableMixin, PaymentMethodMixin {
  AddPaymentInfo$Mutation$AddPaymentInfo();

  factory AddPaymentInfo$Mutation$AddPaymentInfo.fromJson(
          Map<String, dynamic> json) =>
      _$AddPaymentInfo$Mutation$AddPaymentInfoFromJson(json);

  @override
  List<Object> get props => [$$typename, id, card];
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
class PaymentMethodMixin$Card with EquatableMixin, CreditCardMixin {
  PaymentMethodMixin$Card();

  factory PaymentMethodMixin$Card.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodMixin$CardFromJson(json);

  @override
  List<Object> get props => [$$typename, brand, expMonth, expYear, last4];
  Map<String, dynamic> toJson() => _$PaymentMethodMixin$CardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToOrder$Mutation$AddToOrder with EquatableMixin, OrderMixin {
  AddToOrder$Mutation$AddToOrder();

  factory AddToOrder$Mutation$AddToOrder.fromJson(Map<String, dynamic> json) =>
      _$AddToOrder$Mutation$AddToOrderFromJson(json);

  @override
  List<Object> get props =>
      [$$typename, id, ownerId, orderItemCount, price, paymentIntentId];
  Map<String, dynamic> toJson() => _$AddToOrder$Mutation$AddToOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToOrder$Mutation with EquatableMixin {
  AddToOrder$Mutation();

  factory AddToOrder$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToOrder$MutationFromJson(json);

  AddToOrder$Mutation$AddToOrder addToOrder;

  @override
  List<Object> get props => [addToOrder];
  Map<String, dynamic> toJson() => _$AddToOrder$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderMixin$OrderItemCount with EquatableMixin, OrderItemCountMixin {
  OrderMixin$OrderItemCount();

  factory OrderMixin$OrderItemCount.fromJson(Map<String, dynamic> json) =>
      _$OrderMixin$OrderItemCountFromJson(json);

  @override
  List<Object> get props => [$$typename, id, orderId, count, shopItem];
  Map<String, dynamic> toJson() => _$OrderMixin$OrderItemCountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderItemCountMixin$ShopItem with EquatableMixin, ShopItemMixin {
  OrderItemCountMixin$ShopItem();

  factory OrderItemCountMixin$ShopItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemCountMixin$ShopItemFromJson(json);

  @override
  List<Object> get props =>
      [$$typename, id, name, description, price, imageUrl, shop];
  Map<String, dynamic> toJson() => _$OrderItemCountMixin$ShopItemToJson(this);
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
class Api$Mutation$RemoveFromOrder with EquatableMixin, OrderMixin {
  Api$Mutation$RemoveFromOrder();

  factory Api$Mutation$RemoveFromOrder.fromJson(Map<String, dynamic> json) =>
      _$Api$Mutation$RemoveFromOrderFromJson(json);

  @override
  List<Object> get props =>
      [$$typename, id, ownerId, orderItemCount, price, paymentIntentId];
  Map<String, dynamic> toJson() => _$Api$Mutation$RemoveFromOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Api$Mutation with EquatableMixin {
  Api$Mutation();

  factory Api$Mutation.fromJson(Map<String, dynamic> json) =>
      _$Api$MutationFromJson(json);

  Api$Mutation$RemoveFromOrder removeFromOrder;

  @override
  List<Object> get props => [removeFromOrder];
  Map<String, dynamic> toJson() => _$Api$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SignUpUser$Mutation$SignUp with EquatableMixin, UserDataMixin {
  SignUpUser$Mutation$SignUp();

  factory SignUpUser$Mutation$SignUp.fromJson(Map<String, dynamic> json) =>
      _$SignUpUser$Mutation$SignUpFromJson(json);

  @override
  List<Object> get props => [$$typename, id, stripeCustId];
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
class AddAddress$Mutation$AddAddress with EquatableMixin, AddressMixin {
  AddAddress$Mutation$AddAddress();

  factory AddAddress$Mutation$AddAddress.fromJson(Map<String, dynamic> json) =>
      _$AddAddress$Mutation$AddAddressFromJson(json);

  @override
  List<Object> get props =>
      [$$typename, id, line1, line2, postalCode, state, city, country];
  Map<String, dynamic> toJson() => _$AddAddress$Mutation$AddAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddAddress$Mutation with EquatableMixin {
  AddAddress$Mutation();

  factory AddAddress$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddAddress$MutationFromJson(json);

  List<AddAddress$Mutation$AddAddress> addAddress;

  @override
  List<Object> get props => [addAddress];
  Map<String, dynamic> toJson() => _$AddAddress$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePaymentInfo$Mutation$DeletePaymentInfo with EquatableMixin {
  DeletePaymentInfo$Mutation$DeletePaymentInfo();

  factory DeletePaymentInfo$Mutation$DeletePaymentInfo.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePaymentInfo$Mutation$DeletePaymentInfoFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$DeletePaymentInfo$Mutation$DeletePaymentInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePaymentInfo$Mutation with EquatableMixin {
  DeletePaymentInfo$Mutation();

  factory DeletePaymentInfo$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeletePaymentInfo$MutationFromJson(json);

  DeletePaymentInfo$Mutation$DeletePaymentInfo deletePaymentInfo;

  @override
  List<Object> get props => [deletePaymentInfo];
  Map<String, dynamic> toJson() => _$DeletePaymentInfo$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveAddress$Mutation$RemoveAddress with EquatableMixin {
  RemoveAddress$Mutation$RemoveAddress();

  factory RemoveAddress$Mutation$RemoveAddress.fromJson(
          Map<String, dynamic> json) =>
      _$RemoveAddress$Mutation$RemoveAddressFromJson(json);

  String id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() =>
      _$RemoveAddress$Mutation$RemoveAddressToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveAddress$Mutation with EquatableMixin {
  RemoveAddress$Mutation();

  factory RemoveAddress$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RemoveAddress$MutationFromJson(json);

  RemoveAddress$Mutation$RemoveAddress removeAddress;

  @override
  List<Object> get props => [removeAddress];
  Map<String, dynamic> toJson() => _$RemoveAddress$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllShopItems$Query$ShopItems with EquatableMixin, ShopItemMixin {
  AllShopItems$Query$ShopItems();

  factory AllShopItems$Query$ShopItems.fromJson(Map<String, dynamic> json) =>
      _$AllShopItems$Query$ShopItemsFromJson(json);

  @override
  List<Object> get props =>
      [$$typename, id, name, description, price, imageUrl, shop];
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
class GetPaymentInfo$Query$GetPaymentInfo
    with EquatableMixin, PaymentMethodMixin {
  GetPaymentInfo$Query$GetPaymentInfo();

  factory GetPaymentInfo$Query$GetPaymentInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetPaymentInfo$Query$GetPaymentInfoFromJson(json);

  @override
  List<Object> get props => [$$typename, id, card];
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
      [$$typename, id, ownerId, orderItemCount, price, paymentIntentId];
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
class GetAddresses$Query$GetAddresses
    with EquatableMixin, AddressWithDefaultMixin {
  GetAddresses$Query$GetAddresses();

  factory GetAddresses$Query$GetAddresses.fromJson(Map<String, dynamic> json) =>
      _$GetAddresses$Query$GetAddressesFromJson(json);

  @override
  List<Object> get props => [
        $$typename,
        id,
        line1,
        line2,
        postalCode,
        state,
        city,
        country,
        isDefault
      ];
  Map<String, dynamic> toJson() =>
      _$GetAddresses$Query$GetAddressesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetAddresses$Query with EquatableMixin {
  GetAddresses$Query();

  factory GetAddresses$Query.fromJson(Map<String, dynamic> json) =>
      _$GetAddresses$QueryFromJson(json);

  List<GetAddresses$Query$GetAddresses> getAddresses;

  @override
  List<Object> get props => [getAddresses];
  Map<String, dynamic> toJson() => _$GetAddresses$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindUserById$Query$FindUserById with EquatableMixin, UserDataMixin {
  FindUserById$Query$FindUserById();

  factory FindUserById$Query$FindUserById.fromJson(Map<String, dynamic> json) =>
      _$FindUserById$Query$FindUserByIdFromJson(json);

  @override
  List<Object> get props => [$$typename, id, stripeCustId];
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
  List<Object> get props =>
      [$$typename, id, name, description, price, imageUrl, shop];
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

  @override
  factory AddPaymentInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$AddPaymentInfoArgumentsFromJson(json);

  final String token;

  final String stripeCustId;

  @override
  List<Object> get props => [token, stripeCustId];
  @override
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
                    name: NameNode(value: 'addPaymentInfoInput'),
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
                FragmentSpreadNode(
                    name: NameNode(value: 'PaymentMethod'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'PaymentMethod'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'PaymentMethod'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'card'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'CreditCard'), directives: [])
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
  AddToOrderArguments({@required this.itemId, this.orderId});

  @override
  factory AddToOrderArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToOrderArgumentsFromJson(json);

  final String itemId;

  final String orderId;

  @override
  List<Object> get props => [itemId, orderId];
  @override
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
              variable: VariableNode(name: NameNode(value: 'orderId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
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
                          name: NameNode(value: 'order_id'),
                          value: VariableNode(name: NameNode(value: 'orderId')))
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
                name: NameNode(value: 'OrderWithPrice'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: 'orderItemCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'OrderItemCount'), directives: [])
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
        name: NameNode(value: 'OrderItemCount'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'OrderItemCount'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
class ApiArguments extends JsonSerializable with EquatableMixin {
  ApiArguments({@required this.itemId, @required this.orderId});

  @override
  factory ApiArguments.fromJson(Map<String, dynamic> json) =>
      _$ApiArgumentsFromJson(json);

  final String itemId;

  final String orderId;

  @override
  List<Object> get props => [itemId, orderId];
  @override
  Map<String, dynamic> toJson() => _$ApiArgumentsToJson(this);
}

class ApiMutation extends GraphQLQuery<Api$Mutation, ApiArguments> {
  ApiMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: null,
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'itemId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'orderId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'removeFromOrder'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'removeFromOrderInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'item_id'),
                          value: VariableNode(name: NameNode(value: 'itemId'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'order_id'),
                          value: VariableNode(name: NameNode(value: 'orderId')))
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
                name: NameNode(value: 'OrderWithPrice'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: 'orderItemCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'OrderItemCount'), directives: [])
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
        name: NameNode(value: 'OrderItemCount'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'OrderItemCount'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
  final String operationName = 'api';

  @override
  final ApiArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  Api$Mutation parse(Map<String, dynamic> json) => Api$Mutation.fromJson(json);
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

  @override
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
  @override
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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

@JsonSerializable(explicitToJson: true)
class AddAddressArguments extends JsonSerializable with EquatableMixin {
  AddAddressArguments(
      {@required this.country,
      @required this.city,
      @required this.line1,
      @required this.line2,
      @required this.postalCode,
      @required this.state,
      @required this.isDefault});

  @override
  factory AddAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$AddAddressArgumentsFromJson(json);

  final String country;

  final String city;

  final String line1;

  final String line2;

  final String postalCode;

  final String state;

  final bool isDefault;

  @override
  List<Object> get props =>
      [country, city, line1, line2, postalCode, state, isDefault];
  @override
  Map<String, dynamic> toJson() => _$AddAddressArgumentsToJson(this);
}

class AddAddressMutation
    extends GraphQLQuery<AddAddress$Mutation, AddAddressArguments> {
  AddAddressMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'addAddress'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'country')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'city')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'line1')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'line2')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'postalCode')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'state')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'isDefault')),
              type: NamedTypeNode(
                  name: NameNode(value: 'Boolean'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'addAddress'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'addAddressInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'city'),
                          value: VariableNode(name: NameNode(value: 'city'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'state'),
                          value: VariableNode(name: NameNode(value: 'state'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'line1'),
                          value: VariableNode(name: NameNode(value: 'line1'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'line2'),
                          value: VariableNode(name: NameNode(value: 'line2'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'postal_code'),
                          value: VariableNode(
                              name: NameNode(value: 'postalCode'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'default'),
                          value:
                              VariableNode(name: NameNode(value: 'isDefault'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'country'),
                          value: VariableNode(name: NameNode(value: 'country')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'Address'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Address'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'Address'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'postal_code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'state'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'city'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'country'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'addAddress';

  @override
  final AddAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  AddAddress$Mutation parse(Map<String, dynamic> json) =>
      AddAddress$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeletePaymentInfoArguments extends JsonSerializable with EquatableMixin {
  DeletePaymentInfoArguments({@required this.paymentMethodId});

  @override
  factory DeletePaymentInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$DeletePaymentInfoArgumentsFromJson(json);

  final String paymentMethodId;

  @override
  List<Object> get props => [paymentMethodId];
  @override
  Map<String, dynamic> toJson() => _$DeletePaymentInfoArgumentsToJson(this);
}

class DeletePaymentInfoMutation extends GraphQLQuery<DeletePaymentInfo$Mutation,
    DeletePaymentInfoArguments> {
  DeletePaymentInfoMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'deletePaymentInfo'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'paymentMethodId')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'deletePaymentInfo'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'deletePaymentInfoInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'paymentMethodId'),
                          value: VariableNode(
                              name: NameNode(value: 'paymentMethodId')))
                    ]))
              ],
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
  final String operationName = 'deletePaymentInfo';

  @override
  final DeletePaymentInfoArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  DeletePaymentInfo$Mutation parse(Map<String, dynamic> json) =>
      DeletePaymentInfo$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RemoveAddressArguments extends JsonSerializable with EquatableMixin {
  RemoveAddressArguments({@required this.id});

  @override
  factory RemoveAddressArguments.fromJson(Map<String, dynamic> json) =>
      _$RemoveAddressArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$RemoveAddressArgumentsToJson(this);
}

class RemoveAddressMutation
    extends GraphQLQuery<RemoveAddress$Mutation, RemoveAddressArguments> {
  RemoveAddressMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'removeAddress'),
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
              name: NameNode(value: 'removeAddress'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'addAddressInput'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: VariableNode(name: NameNode(value: 'id')))
                    ]))
              ],
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
  final String operationName = 'removeAddress';

  @override
  final RemoveAddressArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RemoveAddress$Mutation parse(Map<String, dynamic> json) =>
      RemoveAddress$Mutation.fromJson(json);
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
  GetPaymentInfoArguments({@required this.stripeCustId});

  @override
  factory GetPaymentInfoArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentInfoArgumentsFromJson(json);

  final String stripeCustId;

  @override
  List<Object> get props => [stripeCustId];
  @override
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
              variable: VariableNode(name: NameNode(value: 'stripeCustId')),
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
                              name: NameNode(value: 'stripeCustId')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'PaymentMethod'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'PaymentMethod'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'PaymentMethod'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'card'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'CreditCard'), directives: [])
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
  final String operationName = 'getPaymentInfo';

  @override
  final GetPaymentInfoArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  GetPaymentInfo$Query parse(Map<String, dynamic> json) =>
      GetPaymentInfo$Query.fromJson(json);
}

class FindOrdersFromOwnerIdQuery
    extends GraphQLQuery<FindOrdersFromOwnerId$Query, JsonSerializable> {
  FindOrdersFromOwnerIdQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'findOrdersFromOwnerId'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'findOrdersFromOwnerId'),
              alias: null,
              arguments: [],
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
                name: NameNode(value: 'OrderWithPrice'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: 'orderItemCount'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'OrderItemCount'), directives: [])
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
        name: NameNode(value: 'OrderItemCount'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'OrderItemCount'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
  List<Object> get props => [document, operationName];
  @override
  FindOrdersFromOwnerId$Query parse(Map<String, dynamic> json) =>
      FindOrdersFromOwnerId$Query.fromJson(json);
}

class GetAddressesQuery
    extends GraphQLQuery<GetAddresses$Query, JsonSerializable> {
  GetAddressesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getAddresses'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'getAddresses'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'AddressWithDefault'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'AddressWithDefault'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'AddressWithDefault'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'postal_code'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'state'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'city'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'country'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'default'),
              alias: NameNode(value: 'isDefault'),
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'getAddresses';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetAddresses$Query parse(Map<String, dynamic> json) =>
      GetAddresses$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindUserByIdArguments extends JsonSerializable with EquatableMixin {
  FindUserByIdArguments({@required this.id});

  @override
  factory FindUserByIdArguments.fromJson(Map<String, dynamic> json) =>
      _$FindUserByIdArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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

  @override
  factory FindOneShopItemArguments.fromJson(Map<String, dynamic> json) =>
      _$FindOneShopItemArgumentsFromJson(json);

  final String id;

  @override
  List<Object> get props => [id];
  @override
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
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
