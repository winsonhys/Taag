// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToOrder$Mutation$AddToOrder _$AddToOrder$Mutation$AddToOrderFromJson(
    Map<String, dynamic> json) {
  return AddToOrder$Mutation$AddToOrder()
    ..id = json['id'] as String
    ..ownerId = json['ownerId'] as String
    ..cartItemCount = json['cartItemCount'] == null
        ? null
        : OrderMixin$CartItemCount.fromJson(
            json['cartItemCount'] as Map<String, dynamic>)
    ..price = (json['price'] as num)?.toDouble()
    ..paymentIntentId = json['paymentIntentId'] as String;
}

Map<String, dynamic> _$AddToOrder$Mutation$AddToOrderToJson(
        AddToOrder$Mutation$AddToOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'cartItemCount': instance.cartItemCount?.toJson(),
      'price': instance.price,
      'paymentIntentId': instance.paymentIntentId,
    };

AddToOrder$Mutation _$AddToOrder$MutationFromJson(Map<String, dynamic> json) {
  return AddToOrder$Mutation()
    ..addToOrder = (json['addToOrder'] as List)
        ?.map((e) => e == null
            ? null
            : AddToOrder$Mutation$AddToOrder.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AddToOrder$MutationToJson(
        AddToOrder$Mutation instance) =>
    <String, dynamic>{
      'addToOrder': instance.addToOrder?.map((e) => e?.toJson())?.toList(),
    };

OrderMixin$CartItemCount _$OrderMixin$CartItemCountFromJson(
    Map<String, dynamic> json) {
  return OrderMixin$CartItemCount()
    ..id = json['id'] as String
    ..orderId = json['orderId'] as String
    ..price = (json['price'] as num)?.toDouble()
    ..count = json['count'] as int
    ..shopItem = json['shopItem'] == null
        ? null
        : CartItemCountMixin$ShopItem.fromJson(
            json['shopItem'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OrderMixin$CartItemCountToJson(
        OrderMixin$CartItemCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
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
    ..stripe_cust_id = json['stripe_cust_id'] as String;
}

Map<String, dynamic> _$SignUpUser$Mutation$SignUpToJson(
        SignUpUser$Mutation$SignUp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stripe_cust_id': instance.stripe_cust_id,
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

FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId
    _$FindOrdersFromOwnerId$Query$FindOrdersFromOwnerIdFromJson(
        Map<String, dynamic> json) {
  return FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId()
    ..id = json['id'] as String
    ..ownerId = json['ownerId'] as String
    ..cartItemCount = json['cartItemCount'] == null
        ? null
        : OrderMixin$CartItemCount.fromJson(
            json['cartItemCount'] as Map<String, dynamic>)
    ..price = (json['price'] as num)?.toDouble()
    ..paymentIntentId = json['paymentIntentId'] as String;
}

Map<String, dynamic> _$FindOrdersFromOwnerId$Query$FindOrdersFromOwnerIdToJson(
        FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'cartItemCount': instance.cartItemCount?.toJson(),
      'price': instance.price,
      'paymentIntentId': instance.paymentIntentId,
    };

FindOrdersFromOwnerId$Query _$FindOrdersFromOwnerId$QueryFromJson(
    Map<String, dynamic> json) {
  return FindOrdersFromOwnerId$Query()
    ..findOrdersFromOwnerId = (json['findOrdersFromOwnerId'] as List)
        ?.map((e) => e == null
            ? null
            : FindOrdersFromOwnerId$Query$FindOrdersFromOwnerId.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$FindOrdersFromOwnerId$QueryToJson(
        FindOrdersFromOwnerId$Query instance) =>
    <String, dynamic>{
      'findOrdersFromOwnerId':
          instance.findOrdersFromOwnerId?.map((e) => e?.toJson())?.toList(),
    };

FindUserById$Query$FindUserById _$FindUserById$Query$FindUserByIdFromJson(
    Map<String, dynamic> json) {
  return FindUserById$Query$FindUserById()
    ..id = json['id'] as String
    ..stripe_cust_id = json['stripe_cust_id'] as String;
}

Map<String, dynamic> _$FindUserById$Query$FindUserByIdToJson(
        FindUserById$Query$FindUserById instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stripe_cust_id': instance.stripe_cust_id,
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

AddToOrderArguments _$AddToOrderArgumentsFromJson(Map<String, dynamic> json) {
  return AddToOrderArguments(
    itemId: json['itemId'] as String,
    buyerId: json['buyerId'] as String,
  );
}

Map<String, dynamic> _$AddToOrderArgumentsToJson(
        AddToOrderArguments instance) =>
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

FindOrdersFromOwnerIdArguments _$FindOrdersFromOwnerIdArgumentsFromJson(
    Map<String, dynamic> json) {
  return FindOrdersFromOwnerIdArguments(
    ownerId: json['ownerId'] as String,
  );
}

Map<String, dynamic> _$FindOrdersFromOwnerIdArgumentsToJson(
        FindOrdersFromOwnerIdArguments instance) =>
    <String, dynamic>{
      'ownerId': instance.ownerId,
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
