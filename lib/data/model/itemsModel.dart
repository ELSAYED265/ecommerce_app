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
    );
  }
}
