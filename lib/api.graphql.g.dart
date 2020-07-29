// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllShopItems$Query$ShopItems _$AllShopItems$Query$ShopItemsFromJson(
    Map<String, dynamic> json) {
  return AllShopItems$Query$ShopItems()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..imageUrl = json['imageUrl'] as String
    ..shop = json['shop'] == null
        ? null
        : ShopItemMixin$Shop.fromJson(json['shop'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AllShopItems$Query$ShopItemsToJson(
        AllShopItems$Query$ShopItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'shop': instance.shop?.toJson(),
    };

AllShopItems$Query _$AllShopItems$QueryFromJson(Map<String, dynamic> json) {
  return AllShopItems$Query()
    ..shopItems = (json['shopItems'] as List)
        ?.map((e) => e == null
            ? null
            : AllShopItems$Query$ShopItems.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AllShopItems$QueryToJson(AllShopItems$Query instance) =>
    <String, dynamic>{
      'shopItems': instance.shopItems?.map((e) => e?.toJson())?.toList(),
    };

ShopItemMixin$Shop _$ShopItemMixin$ShopFromJson(Map<String, dynamic> json) {
  return ShopItemMixin$Shop()
    ..id = json['id'] as String
    ..username = json['username'] as String;
}

Map<String, dynamic> _$ShopItemMixin$ShopToJson(ShopItemMixin$Shop instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

FindOneShopItem$Query$ShopItem _$FindOneShopItem$Query$ShopItemFromJson(
    Map<String, dynamic> json) {
  return FindOneShopItem$Query$ShopItem()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..imageUrl = json['imageUrl'] as String
    ..shop = json['shop'] == null
        ? null
        : ShopItemMixin$Shop.fromJson(json['shop'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FindOneShopItem$Query$ShopItemToJson(
        FindOneShopItem$Query$ShopItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'shop': instance.shop?.toJson(),
    };

FindOneShopItem$Query _$FindOneShopItem$QueryFromJson(
    Map<String, dynamic> json) {
  return FindOneShopItem$Query()
    ..shopItem = json['shopItem'] == null
        ? null
        : FindOneShopItem$Query$ShopItem.fromJson(
            json['shopItem'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FindOneShopItem$QueryToJson(
        FindOneShopItem$Query instance) =>
    <String, dynamic>{
      'shopItem': instance.shopItem?.toJson(),
    };

FindOneShopItemArguments _$FindOneShopItemArgumentsFromJson(
    Map<String, dynamic> json) {
  return FindOneShopItemArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$FindOneShopItemArgumentsToJson(
        FindOneShopItemArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
