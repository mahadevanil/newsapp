import '../../model/category.model.dart';

class CategoryListProvider {
  List<CategoryModel> catList = [
    CategoryModel(text: "business"),
    CategoryModel(text: "entertainment"),
    CategoryModel(text: "general"),
    CategoryModel(text: "health"),
    CategoryModel(text: "science"),
    CategoryModel(text: "sports"),
    CategoryModel(text: "technology"),
  ];

  Future<List<CategoryModel>> getCategoryList() {
    return Future.value(catList);
  }
}
