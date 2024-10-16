class RouteConstants {
  RouteConstants._();
  static const RoutePath path = RoutePath();
  static const RouteName name = RouteName();
}

class RoutePath {
  const RoutePath();
  String get initial => '/';
  String get onboarding => '/onboarding';
  String get bottomNav => '/bottomNav';
  String get home => '/home';
  String get settings => '/settings';
  String get favorite => '/favorite';
  String get news => '/news';
  String get enterYourName => '/enterYourName';
  String get stepTwo => '/stepTwo';
  String get enterLocation => '/enterLocation';
  String get newsDetail => '/newsDetail';
}

class RouteName {
  const RouteName();
  String get initial => 'splash';
  String get onboarding => 'onboarding';
  String get bottomNav => 'bottomNav';
  String get home => 'home';
  String get settings => 'settings';
  String get favorite => 'favorite';
  String get news => 'news';
  String get enterYourName => 'enterYourName';
  String get stepTwo => 'stepTwo';
  String get enterLocation => 'enterLocation';
  String get newsDetail => 'newsDetail';
}
