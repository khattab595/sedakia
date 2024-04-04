class ProductFilterParams {
  int? categoryId;
  int page;

  ProductFilterParams({
     this.categoryId,
     this.page = 1,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // this use in the path
    // data['categoryId'] = categoryId;
    data['page'] = page;
    return data;
  }
}
