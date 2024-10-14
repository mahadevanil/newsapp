import 'package:go_router/go_router.dart';
import 'package:news_app/views/on-boarding/step-one/enter_your_name.screen.dart';

import '../constants/route.constants.dart';
import '../views/bottom-nav/bottom_nav.screen.dart';
import '../views/on-boarding/step-three/enter_location.screen.dart';
import '../views/on-boarding/step-two/step_two.screen.dart';
import '../views/settings/settings.screen.dart';
import '../views/splash/splash.screen.dart';

final router = GoRouter(
  routes: [
    //-------(splash screen)
    GoRoute(
      path: RouteConstants.path.initial,
      name: RouteConstants.name.initial,
      builder: (context, state) => const SplashScreen(),
    ),

    //-------(enter your name screen)
    GoRoute(
      path: RouteConstants.path.enterYourName,
      name: RouteConstants.name.enterYourName,
      builder: (context, state) => const EnterYourNameScreen(),
    ),
    //-------(step two screen)
    GoRoute(
      path: RouteConstants.path.stepTwo,
      name: RouteConstants.name.stepTwo,
      builder: (context, state) => const StepTwoScreen(),
    ),
    //-------(location screen)
    GoRoute(
      path: RouteConstants.path.enterLocation,
      name: RouteConstants.name.enterLocation,
      builder: (context, state) => const EnterLocationScreen(),
    ),
    //-------(bottom nav screen)
    GoRoute(
      path: RouteConstants.path.bottomNav,
      name: RouteConstants.name.bottomNav,
      builder: (context, state) => const BottomNavigation(),
    ),
    //-------(settings screen)
    GoRoute(
      path: RouteConstants.path.settings,
      name: RouteConstants.name.settings,
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);
