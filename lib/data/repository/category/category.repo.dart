import 'package:news_app/data/model/category.model.dart';

import '../../../main.dart';
import '../../provider/category/category.provider.dart';

class CategoryListRepo {
  final CategoryListProvider provider =
      autoInjector.get<CategoryListProvider>();
  Future<List<CategoryModel>> getCategoryList() {
    final response = Future.value(provider.catList);
    return response;
  }
}
