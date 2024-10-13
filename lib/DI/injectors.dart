import 'package:news_app/main.dart';

import '../data/provider/category/category.provider.dart';
import '../data/repository/category/category.repo.dart';

autoInjectInitializer() {
  //------- (category)
  autoInjector.add(CategoryListProvider.new);
  autoInjector.add(CategoryListRepo.new);
  autoInjector.commit();
}
