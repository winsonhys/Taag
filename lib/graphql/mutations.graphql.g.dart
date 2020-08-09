// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutations.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCart$Mutation$AddToCart _$AddToCart$Mutation$AddToCartFromJson(
    Map<String, dynamic> json) {
  return AddToCart$Mutation$AddToCart()
    ..id = json['id'] as String
    ..cartItemCounts = (json['cartItemCounts'] as List)
        ?.map((e) => e == null
            ? null
            : CartMixin$CartItemCounts.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..price = (json['price'] as num)?.toDouble()
    ..chargeId = json['chargeId'] as String;
}

Map<String, dynamic> _$AddToCart$Mutation$AddToCartToJson(
        AddToCart$Mutation$AddToCart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cartItemCounts':
          instance.cartItemCounts?.map((e) => e?.toJson())?.toList(),
      'price': instance.price,
      'chargeId': instance.chargeId,
    };

AddToCart$Mutation _$AddToCart$MutationFromJson(Map<String, dynamic> json) {
  return AddToCart$Mutation()
    ..addToCart = json['addToCart'] == null
        ? null
        : AddToCart$Mutation$AddToCart.fromJson(
            json['addToCart'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddToCart$MutationToJson(AddToCart$Mutation instance) =>
    <String, dynamic>{
      'addToCart': instance.addToCart?.toJson(),
    };

CartMixin$CartItemCounts _$CartMixin$CartItemCountsFromJson(
    Map<String, dynamic> json) {
  return CartMixin$CartItemCounts()
    ..id = json['id'] as String
    ..cartId = json['cartId'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..count = json['count'] as int
    ..shopItem = json['shopItem'] == null
        ? null
        : CartItemCountMixin$ShopItem.fromJson(
            json['shopItem'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartMixin$CartItemCountsToJson(
        CartMixin$CartItemCounts instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cartId': instance.cartId,
      'price': instance.price,
      'count': instance.count,
      'shopItem': instance.shopItem?.toJson(),
    };

CartItemCountMixin$ShopItem _$CartItemCountMixin$ShopItemFromJson(
    Map<String, dynamic> json) {
  return CartItemCountMixin$ShopItem()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..imageUrl = json['imageUrl'] as String
    ..shop = json['shop'] == null
        ? null
        : ShopItemMixin$Shop.fromJson(json['shop'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartItemCountMixin$ShopItemToJson(
        CartItemCountMixin$ShopItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'shop': instance.shop?.toJson(),
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

SignUpUser$Mutation$SignUp _$SignUpUser$Mutation$SignUpFromJson(
    Map<String, dynamic> json) {
  return SignUpUser$Mutation$SignUp()..id = json['id'] as String;
}

Map<String, dynamic> _$SignUpUser$Mutation$SignUpToJson(
        SignUpUser$Mutation$SignUp instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

SignUpUser$Mutation _$SignUpUser$MutationFromJson(Map<String, dynamic> json) {
  return SignUpUser$Mutation()
    ..signUp = json['signUp'] == null
        ? null
        : SignUpUser$Mutation$SignUp.fromJson(
            json['signUp'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignUpUser$MutationToJson(
        SignUpUser$Mutation instance) =>
    <String, dynamic>{
      'signUp': instance.signUp?.toJson(),
    };

AddToCartArguments _$AddToCartArgumentsFromJson(Map<String, dynamic> json) {
  return AddToCartArguments(
    itemId: json['itemId'] as String,
    buyerId: json['buyerId'] as String,
  );
}

Map<String, dynamic> _$AddToCartArgumentsToJson(AddToCartArguments instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'buyerId': instance.buyerId,
    };

SignUpUserArguments _$SignUpUserArgumentsFromJson(Map<String, dynamic> json) {
  return SignUpUserArguments(
    email: json['email'] as String,
    password: json['password'] as String,
    displayName: json['displayName'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  );
}

Map<String, dynamic> _$SignUpUserArgumentsToJson(
        SignUpUserArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'displayName': instance.displayName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dob': instance.dob?.toIso8601String(),
    };
