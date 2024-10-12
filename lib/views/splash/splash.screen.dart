import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/config.dart';

import '../../bloc/splash/splash_bloc.dart';
import '../../constants/route.constants.dart';
import '../../constants/string.constants.dart';
import '../../gen/assets.gen.dart';
import '../../style/text_styles.dart';
import '../../utils/enums.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state.loadingStatus == LoadingStatus.success) {
              context.go(
                RouteConstants.path.enterYourName,
              );
            }
          },
          //!-------------(News app )----------------
          child: uiCon.bgImage(
            image: Assets.images.block.path,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Animate(
                        child: KStyles()
                            .bold(
                              context: context,
                              text: StringConst.newsApp,
                              size: 30,
                            )
                            .animate()
                            .shader(duration: 3.seconds)
                            .fadeIn(duration: 300.ms)),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
