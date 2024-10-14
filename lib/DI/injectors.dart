import 'package:news_app/data/service/news/news.service.dart';
import 'package:news_app/data/service/weather/weather.service.dart';
import 'package:news_app/main.dart';

import '../data/provider/category/category.provider.dart';
import '../data/repository/category/category.repo.dart';
import '../data/service/location/location.service.dart';

autoInjectInitializer() {
  //------- (category)
  autoInjector.add(CategoryListProvider.new);
  autoInjector.add(CategoryListRepo.new);
  autoInjector.add(() => LocationService.create());
  autoInjector.add(() => WeatherService.create());
  autoInjector.add(() => NewsService.create());
  autoInjector.commit();
}
