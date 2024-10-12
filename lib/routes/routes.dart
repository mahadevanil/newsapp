import 'package:go_router/go_router.dart';
import 'package:news_app/views/on-boarding/enter_your_name.screen.dart';

import '../constants/route.constants.dart';
import '../views/on-boarding/step_two.screen.dart';
import '../views/splash/splash.screen.dart';

final router = GoRouter(
  routes: [
    //-------(splash screen)
    GoRoute(
      path: RouteConstants.path.initial,
      builder: (context, state) => const SplashScreen(),
    ),

    //-------(enter your name screen)
    GoRoute(
      path: RouteConstants.path.enterYourName,
      builder: (context, state) => const EnterYourNameScreen(),
    ),
    //-------(enter your name screen)
    GoRoute(
      path: RouteConstants.path.enterYourName,
      builder: (context, state) => const StepTwoScreen(),
    ),
  ],
);
