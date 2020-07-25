// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AllShopItems$Query$ShopItem$Shop with EquatableMixin {
  AllShopItems$Query$ShopItem$Shop();

  factory AllShopItems$Query$ShopItem$Shop.fromJson(
          Map<String, dynamic> json) =>
      _$AllShopItems$Query$ShopItem$ShopFromJson(json);

  String id;

  String username;

  @override
  List<Object> get props => [id, username];
  Map<String, dynamic> toJson() =>
      _$AllShopItems$Query$ShopItem$ShopToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllShopItems$Query$ShopItem with EquatableMixin {
  AllShopItems$Query$ShopItem();

  factory AllShopItems$Query$ShopItem.fromJson(Map<String, dynamic> json) =>
      _$AllShopItems$Query$ShopItemFromJson(json);

  String id;

  String name;

  String description;

  double price;

  String imageUrl;

  AllShopItems$Query$ShopItem$Shop shop;

  @override
  List<Object> get props => [id, name, description, price, imageUrl, shop];
  Map<String, dynamic> toJson() => _$AllShopItems$Query$ShopItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllShopItems$Query with EquatableMixin {
  AllShopItems$Query();

  factory AllShopItems$Query.fromJson(Map<String, dynamic> json) =>
      _$AllShopItems$QueryFromJson(json);

  List<AllShopItems$Query$ShopItem> shopItems;

  @override
  List<Object> get props => [shopItems];
  Map<String, dynamic> toJson() => _$AllShopItems$QueryToJson(this);
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
