// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

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
  return SignUpUser$Mutation$SignUp()
    ..id = json['id'] as String
    ..cart = json['cart'] == null
        ? null
        : UserDataMixin$Cart.fromJson(json['cart'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SignUpUser$Mutation$SignUpToJson(
        SignUpUser$Mutation$SignUp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart': instance.cart?.toJson(),
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

UserDataMixin$Cart _$UserDataMixin$CartFromJson(Map<String, dynamic> json) {
  return UserDataMixin$Cart()..id = json['id'] as String;
}

Map<String, dynamic> _$UserDataMixin$CartToJson(UserDataMixin$Cart instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

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

FindUserById$Query$FindUserById _$FindUserById$Query$FindUserByIdFromJson(
    Map<String, dynamic> json) {
  return FindUserById$Query$FindUserById()
    ..id = json['id'] as String
    ..cart = json['cart'] == null
        ? null
        : UserDataMixin$Cart.fromJson(json['cart'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FindUserById$Query$FindUserByIdToJson(
        FindUserById$Query$FindUserById instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart': instance.cart?.toJson(),
    };

FindUserById$Query _$FindUserById$QueryFromJson(Map<String, dynamic> json) {
  return FindUserById$Query()
    ..findUserById = json['findUserById'] == null
        ? null
        : FindUserById$Query$FindUserById.fromJson(
            json['findUserById'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FindUserById$QueryToJson(FindUserById$Query instance) =>
    <String, dynamic>{
      'findUserById': instance.findUserById?.toJson(),
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

FindCartFromOwnerId$Query$FindCartFromOwnerId$CartItemCounts
    _$FindCartFromOwnerId$Query$FindCartFromOwnerId$CartItemCountsFromJson(
        Map<String, dynamic> json) {
  return FindCartFromOwnerId$Query$FindCartFromOwnerId$CartItemCounts()
    ..id = json['id'] as String
    ..cartId = json['cartId'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..count = json['count'] as int
    ..shopItem = json['shopItem'] == null
        ? null
        : CartItemCountMixin$ShopItem.fromJson(
            json['shopItem'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$FindCartFromOwnerId$Query$FindCartFromOwnerId$CartItemCountsToJson(
            FindCartFromOwnerId$Query$FindCartFromOwnerId$CartItemCounts
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'cartId': instance.cartId,
          'price': instance.price,
          'count': instance.count,
          'shopItem': instance.shopItem?.toJson(),
        };

FindCartFromOwnerId$Query$FindCartFromOwnerId
    _$FindCartFromOwnerId$Query$FindCartFromOwnerIdFromJson(
        Map<String, dynamic> json) {
  return FindCartFromOwnerId$Query$FindCartFromOwnerId()
    ..id = json['id'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..cartItemCounts = (json['cartItemCounts'] as List)
        ?.map((e) => e == null
            ? null
            : FindCartFromOwnerId$Query$FindCartFromOwnerId$CartItemCounts
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FindCartFromOwnerId$Query$FindCartFromOwnerIdToJson(
        FindCartFromOwnerId$Query$FindCartFromOwnerId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'cartItemCounts':
          instance.cartItemCounts?.map((e) => e?.toJson())?.toList(),
    };

FindCartFromOwnerId$Query _$FindCartFromOwnerId$QueryFromJson(
    Map<String, dynamic> json) {
  return FindCartFromOwnerId$Query()
    ..findCartFromOwnerId = json['findCartFromOwnerId'] == null
        ? null
        : FindCartFromOwnerId$Query$FindCartFromOwnerId.fromJson(
            json['findCartFromOwnerId'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FindCartFromOwnerId$QueryToJson(
        FindCartFromOwnerId$Query instance) =>
    <String, dynamic>{
      'findCartFromOwnerId': instance.findCartFromOwnerId?.toJson(),
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

FindUserByIdArguments _$FindUserByIdArgumentsFromJson(
    Map<String, dynamic> json) {
  return FindUserByIdArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$FindUserByIdArgumentsToJson(
        FindUserByIdArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

FindCartFromOwnerIdArguments _$FindCartFromOwnerIdArgumentsFromJson(
    Map<String, dynamic> json) {
  return FindCartFromOwnerIdArguments(
    ownerId: json['ownerId'] as String,
  );
}

Map<String, dynamic> _$FindCartFromOwnerIdArgumentsToJson(
        FindCartFromOwnerIdArguments instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
    };
