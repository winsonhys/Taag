// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin ItemMixin {
  String id;
  String name;
  String description;
  double price;
  String imageUrl;
  ItemMixin$Shop shop;
}

@JsonSerializable(explicitToJson: true)
class AllShopItems$Query$ShopItems with EquatableMixin, ItemMixin {
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
class ItemMixin$Shop with EquatableMixin {
  ItemMixin$Shop();

  factory ItemMixin$Shop.fromJson(Map<String, dynamic> json) =>
      _$ItemMixin$ShopFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() => _$ItemMixin$ShopToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindOneShopItem$Query$ShopItem with EquatableMixin, ItemMixin {
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
                    name: NameNode(value: 'Item'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Item'),
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
                    name: NameNode(value: 'Item'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'Item'),
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
