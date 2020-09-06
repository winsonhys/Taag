// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPaymentInfo$Mutation$AddPaymentInfo
    _$AddPaymentInfo$Mutation$AddPaymentInfoFromJson(
        Map<String, dynamic> json) {
  return AddPaymentInfo$Mutation$AddPaymentInfo()
    ..id = json['id'] as String
    ..card = json['card'] == null
        ? null
        : PaymentMethodMixin$Card.fromJson(
            json['card'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddPaymentInfo$Mutation$AddPaymentInfoToJson(
        AddPaymentInfo$Mutation$AddPaymentInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card': instance.card?.toJson(),
    };

AddPaymentInfo$Mutation _$AddPaymentInfo$MutationFromJson(
    Map<String, dynamic> json) {
  return AddPaymentInfo$Mutation()
    ..addPaymentInfo = json['addPaymentInfo'] == null
        ? null
        : AddPaymentInfo$Mutation$AddPaymentInfo.fromJson(
            json['addPaymentInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddPaymentInfo$MutationToJson(
        AddPaymentInfo$Mutation instance) =>
    <String, dynamic>{
      'addPaymentInfo': instance.addPaymentInfo?.toJson(),
    };

PaymentMethodMixin$Card _$PaymentMethodMixin$CardFromJson(
    Map<String, dynamic> json) {
  return PaymentMethodMixin$Card()
    ..brand = json['brand'] as String
    ..exp_month = (json['exp_month'] as num)?.toDouble()
    ..exp_year = (json['exp_year'] as num)?.toDouble()
    ..last4 = json['last4'] as String;
}

Map<String, dynamic> _$PaymentMethodMixin$CardToJson(
        PaymentMethodMixin$Card instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'exp_month': instance.exp_month,
      'exp_year': instance.exp_year,
      'last4': instance.last4,
    };

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

AddAddress$Mutation$AddAddress _$AddAddress$Mutation$AddAddressFromJson(
    Map<String, dynamic> json) {
  return AddAddress$Mutation$AddAddress()
    ..id = json['id'] as String
    ..line1 = json['line1'] as String
    ..line2 = json['line2'] as String
    ..postal_code = json['postal_code'] as String
    ..state = json['state'] as String
    ..city = json['city'] as String
    ..country = json['country'] as String;
}

Map<String, dynamic> _$AddAddress$Mutation$AddAddressToJson(
        AddAddress$Mutation$AddAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line1': instance.line1,
      'line2': instance.line2,
      'postal_code': instance.postal_code,
      'state': instance.state,
      'city': instance.city,
      'country': instance.country,
    };

AddAddress$Mutation _$AddAddress$MutationFromJson(Map<String, dynamic> json) {
  return AddAddress$Mutation()
    ..addAddress = (json['addAddress'] as List)
        ?.map((e) => e == null
            ? null
            : AddAddress$Mutation$AddAddress.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AddAddress$MutationToJson(
        AddAddress$Mutation instance) =>
    <String, dynamic>{
      'addAddress': instance.addAddress?.map((e) => e?.toJson())?.toList(),
    };

DeletePaymentInfo$Mutation$DeletePaymentInfo
    _$DeletePaymentInfo$Mutation$DeletePaymentInfoFromJson(
        Map<String, dynamic> json) {
  return DeletePaymentInfo$Mutation$DeletePaymentInfo()
    ..id = json['id'] as String;
}

Map<String, dynamic> _$DeletePaymentInfo$Mutation$DeletePaymentInfoToJson(
        DeletePaymentInfo$Mutation$DeletePaymentInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DeletePaymentInfo$Mutation _$DeletePaymentInfo$MutationFromJson(
    Map<String, dynamic> json) {
  return DeletePaymentInfo$Mutation()
    ..deletePaymentInfo = json['deletePaymentInfo'] == null
        ? null
        : DeletePaymentInfo$Mutation$DeletePaymentInfo.fromJson(
            json['deletePaymentInfo'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DeletePaymentInfo$MutationToJson(
        DeletePaymentInfo$Mutation instance) =>
    <String, dynamic>{
      'deletePaymentInfo': instance.deletePaymentInfo?.toJson(),
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

GetPaymentInfo$Query$GetPaymentInfo
    _$GetPaymentInfo$Query$GetPaymentInfoFromJson(Map<String, dynamic> json) {
  return GetPaymentInfo$Query$GetPaymentInfo()
    ..id = json['id'] as String
    ..card = json['card'] == null
        ? null
        : PaymentMethodMixin$Card.fromJson(
            json['card'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetPaymentInfo$Query$GetPaymentInfoToJson(
        GetPaymentInfo$Query$GetPaymentInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card': instance.card?.toJson(),
    };

GetPaymentInfo$Query _$GetPaymentInfo$QueryFromJson(Map<String, dynamic> json) {
  return GetPaymentInfo$Query()
    ..getPaymentInfo = (json['getPaymentInfo'] as List)
        ?.map((e) => e == null
            ? null
            : GetPaymentInfo$Query$GetPaymentInfo.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetPaymentInfo$QueryToJson(
        GetPaymentInfo$Query instance) =>
    <String, dynamic>{
      'getPaymentInfo':
          instance.getPaymentInfo?.map((e) => e?.toJson())?.toList(),
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

GetAddresses$Query$GetAddresses _$GetAddresses$Query$GetAddressesFromJson(
    Map<String, dynamic> json) {
  return GetAddresses$Query$GetAddresses()
    ..id = json['id'] as String
    ..line1 = json['line1'] as String
    ..line2 = json['line2'] as String
    ..postal_code = json['postal_code'] as String
    ..state = json['state'] as String
    ..city = json['city'] as String
    ..country = json['country'] as String
    ..isDefault = json['isDefault'] as bool;
}

Map<String, dynamic> _$GetAddresses$Query$GetAddressesToJson(
        GetAddresses$Query$GetAddresses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line1': instance.line1,
      'line2': instance.line2,
      'postal_code': instance.postal_code,
      'state': instance.state,
      'city': instance.city,
      'country': instance.country,
      'isDefault': instance.isDefault,
    };

GetAddresses$Query _$GetAddresses$QueryFromJson(Map<String, dynamic> json) {
  return GetAddresses$Query()
    ..getAddresses = (json['getAddresses'] as List)
        ?.map((e) => e == null
            ? null
            : GetAddresses$Query$GetAddresses.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetAddresses$QueryToJson(GetAddresses$Query instance) =>
    <String, dynamic>{
      'getAddresses': instance.getAddresses?.map((e) => e?.toJson())?.toList(),
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

RemoveAddress$Mutation$RemoveAddress
    _$RemoveAddress$Mutation$RemoveAddressFromJson(Map<String, dynamic> json) {
  return RemoveAddress$Mutation$RemoveAddress()..id = json['id'] as String;
}

Map<String, dynamic> _$RemoveAddress$Mutation$RemoveAddressToJson(
        RemoveAddress$Mutation$RemoveAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

RemoveAddress$Mutation _$RemoveAddress$MutationFromJson(
    Map<String, dynamic> json) {
  return RemoveAddress$Mutation()
    ..removeAddress = json['removeAddress'] == null
        ? null
        : RemoveAddress$Mutation$RemoveAddress.fromJson(
            json['removeAddress'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RemoveAddress$MutationToJson(
        RemoveAddress$Mutation instance) =>
    <String, dynamic>{
      'removeAddress': instance.removeAddress?.toJson(),
    };

AddPaymentInfoArguments _$AddPaymentInfoArgumentsFromJson(
    Map<String, dynamic> json) {
  return AddPaymentInfoArguments(
    token: json['token'] as String,
    stripeCustId: json['stripeCustId'] as String,
  );
}

Map<String, dynamic> _$AddPaymentInfoArgumentsToJson(
        AddPaymentInfoArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
      'stripeCustId': instance.stripeCustId,
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

AddAddressArguments _$AddAddressArgumentsFromJson(Map<String, dynamic> json) {
  return AddAddressArguments(
    country: json['country'] as String,
    city: json['city'] as String,
    line1: json['line1'] as String,
    line2: json['line2'] as String,
    postalCode: json['postalCode'] as String,
    state: json['state'] as String,
    isDefault: json['isDefault'] as bool,
  );
}

Map<String, dynamic> _$AddAddressArgumentsToJson(
        AddAddressArguments instance) =>
    <String, dynamic>{
      'country': instance.country,
      'city': instance.city,
      'line1': instance.line1,
      'line2': instance.line2,
      'postalCode': instance.postalCode,
      'state': instance.state,
      'isDefault': instance.isDefault,
    };

DeletePaymentInfoArguments _$DeletePaymentInfoArgumentsFromJson(
    Map<String, dynamic> json) {
  return DeletePaymentInfoArguments(
    paymentMethodId: json['paymentMethodId'] as String,
  );
}

Map<String, dynamic> _$DeletePaymentInfoArgumentsToJson(
        DeletePaymentInfoArguments instance) =>
    <String, dynamic>{
      'paymentMethodId': instance.paymentMethodId,
    };

GetPaymentInfoArguments _$GetPaymentInfoArgumentsFromJson(
    Map<String, dynamic> json) {
  return GetPaymentInfoArguments(
    stripeCustId: json['stripeCustId'] as String,
  );
}

Map<String, dynamic> _$GetPaymentInfoArgumentsToJson(
        GetPaymentInfoArguments instance) =>
    <String, dynamic>{
      'stripeCustId': instance.stripeCustId,
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

RemoveAddressArguments _$RemoveAddressArgumentsFromJson(
    Map<String, dynamic> json) {
  return RemoveAddressArguments(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$RemoveAddressArgumentsToJson(
        RemoveAddressArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
