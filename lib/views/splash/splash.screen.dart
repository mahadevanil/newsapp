import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/cubit/splash/splash_cubit.dart';

import '../../constants/route.constants.dart';
import '../../constants/string.constants.dart';
import '../../style/text_styles.dart';
import '../../utils/enums.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return uiCon.bgFrame(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.loadingStatus == LoadingStatus.success) {
            context.go(
              RouteConstants.path.enterYourName,
            );
          }
        },
        //!-------------(News app )----------------
        child: Center(
          child: Animate(
              child: KStyles()
                  .bold(
                    context: context,
                    text: StringConst.newsApp,
                    size: 40,
                  )
                  .animate()
                  .shader(duration: 3.seconds)
                  .fadeIn(duration: 300.ms)),
        ),
      ),
    );
  }
}
