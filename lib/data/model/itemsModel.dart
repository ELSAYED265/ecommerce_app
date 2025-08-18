class itemsModel {
  final int itemsId;
  final String itemsNameEn;
  final String itemsNameAr;
  final String itemsDescEn;
  final String itemsDescAr;
  final String itemsImage;
  final int itemsCount;
  final int itemsActive;
  final double itemsPrice;
  final int itemsDiscount;
  final String itemsData;
  final int itemsCategories;
  final int categoriesId;
  final String categoriesNameEn;
  final String categoriesNameAr;
  final String categoriesImage;
  final String categoriesDatatime;
  final String favorite;

  itemsModel({
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
    required this.categoriesId,
    required this.categoriesNameEn,
    required this.categoriesNameAr,
    required this.categoriesImage,
    required this.categoriesDatatime,
    required this.favorite,
  });

  factory itemsModel.fromJson(Map<String, dynamic> json) {
    return itemsModel(
      itemsId: json['items_id'],
      itemsNameEn: json['items_name_en'],
      itemsNameAr: json['items_name_ar'],
      itemsDescEn: json['items_desc_en'],
      itemsDescAr: json['items_desc_ar'],
      itemsImage: json['items_image'],
      itemsCount: json['items_count'],
      itemsActive: json['items_active'],
      itemsPrice: json['items_price'].toDouble(),
      itemsDiscount: json['items_discount'],
      itemsData: json['items_data'],
      itemsCategories: json['items_categories'],
      categoriesId: json['categories_id'],
      categoriesNameEn: json['categories_name_en'],
      categoriesNameAr: json['categories_name_ar'],
      categoriesImage: json['categories_image'],
      categoriesDatatime: json['categories_datatime'],
      favorite: json['favorite'].toString(),
    );
  }
}
