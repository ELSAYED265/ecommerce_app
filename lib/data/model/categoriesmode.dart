class CategoriesModel {
  final int categoriesId;
  final String categoriesNameEn;
  final String categoriesNameAr;
  final String categoriesImage;
  final String categoriesDatatime;

  CategoriesModel({
    required this.categoriesId,
    required this.categoriesNameEn,
    required this.categoriesNameAr,
    required this.categoriesImage,
    required this.categoriesDatatime,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      categoriesId: json['categories_id'],
      categoriesNameEn: json['categories_name_en'],
      categoriesNameAr: json['categories_name_ar'],
      categoriesImage: json['categories_image'],
      categoriesDatatime: json['categories_datatime'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = this.categoriesId;
    data['categories_name_en'] = this.categoriesNameEn;
    data['categories_name_ar'] = this.categoriesNameAr;
    data['categories_image'] = this.categoriesImage;
    data['categories_datatime'] = this.categoriesDatatime;
    return data;
  }
}
