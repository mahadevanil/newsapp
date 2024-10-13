import 'package:go_router/go_router.dart';
import 'package:news_app/views/on-boarding/step-one/enter_your_name.screen.dart';

import '../constants/route.constants.dart';
import '../views/on-boarding/step-three/enter_location.screen.dart';
import '../views/on-boarding/step-two/step_two.screen.dart';
import '../views/splash/splash.screen.dart';

final router = GoRouter(
  routes: [
    //-------(splash screen)
    GoRoute(
      path: RouteConstants.path.initial,
      name: RouteConstants.name.initial,
      builder: (context, state) => const EnterLocationScreen(),
    ),

    //-------(enter your name screen)
    GoRoute(
      path: RouteConstants.path.enterYourName,
      name: RouteConstants.name.enterYourName,
      builder: (context, state) => const EnterYourNameScreen(),
    ),
    //-------(enter your name screen)
    GoRoute(
      path: RouteConstants.path.stepTwo,
      name: RouteConstants.name.stepTwo,
      builder: (context, state) => const StepTwoScreen(),
    ),
    //-------(enter your name screen)
    GoRoute(
      path: RouteConstants.path.enterLocation,
      name: RouteConstants.name.enterLocation,
      builder: (context, state) => const EnterLocationScreen(),
    ),
  ],
);
