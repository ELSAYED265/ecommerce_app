class MyfavoriteModel {
  final int favoriteId;
  final int favoriteUsersid;
  final int favoriteItemsid;
  final int itemsId;
  final String itemsNameEn;
  final String itemsNameAr;
  final String itemsDescEn;
  final String itemsDescAr;
  final String itemsImage;
  final int itemsCount;
  final int itemsActive;
  final int itemsPrice;
  final int itemsDiscount;
  final String itemsData;
  final int itemsCategories;
  final int usersId;

  MyfavoriteModel({
    required this.favoriteId,
    required this.favoriteUsersid,
    required this.favoriteItemsid,
    required this.itemsId,
    required this.itemsNameEn,
    required this.itemsNameAr,
    required this.itemsDescEn,
    required this.itemsDescAr,
    required this.itemsImage,
    required this.itemsCount,
    required this.itemsActive,
    required this.itemsPrice,
    required this.itemsDiscount,
    required this.itemsData,
    required this.itemsCategories,
    required this.usersId,
  });

  factory MyfavoriteModel.fromJson(Map<String, dynamic> json) {
    return MyfavoriteModel(
      favoriteId: json['favorite_id'],
      favoriteUsersid: json['favorite_usersid'],
      favoriteItemsid: json['favorite_itemsid'],
      itemsId: json['items_id'],
      itemsNameEn: json['items_name_en'],
      itemsNameAr: json['items_name_ar'],
      itemsDescEn: json['items_desc_en'],
      itemsDescAr: json['items_desc_ar'],
      itemsImage: json['items_image'],
      itemsCount: json['items_count'],
      itemsActive: json['items_active'],
      itemsPrice: json['items_price'],
      itemsDiscount: json['items_discount'],
      itemsData: json['items_data'],
      itemsCategories: json['items_categories'],
      usersId: json['users_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'favorite_id': favoriteId,
      'favorite_usersid': favoriteUsersid,
      'favorite_itemsid': favoriteItemsid,
      'items_id': itemsId,
      'items_name_en': itemsNameEn,
      'items_name_ar': itemsNameAr,
      'items_desc_en': itemsDescEn,
      'items_desc_ar': itemsDescAr,
      'items_image': itemsImage,
      'items_count': itemsCount,
      'items_active': itemsActive,
      'items_price': itemsPrice,
      'items_discount': itemsDiscount,
      'items_data': itemsData,
      'items_categories': itemsCategories,
      'users_id': usersId,
    };
  }
}
