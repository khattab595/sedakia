import '../../data/models/category_dto.dart';
import 'Data.dart';

class CategoryModel {
  CategoryModel({
      this.data, 
      this.totalCategories, 
      this.page, 
      this.perPage,});

  List<CategoryData>? data;
  int? totalCategories;
  int? page;
  int? perPage;


  factory CategoryModel.fromDto(CategoryDto json) {
    return CategoryModel(
      totalCategories: json.totalCategories,
      page: json.page,
      perPage: json.perPage,
      data: json.data?.map((e) => CategoryData.fromDto(e)).toList(),
    );
}


  }
