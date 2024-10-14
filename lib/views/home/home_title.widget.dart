import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/cubit/bottom-nav/bottom_nav_cubit.dart';

import '../../constants/route.constants.dart';
import '../../style/colors.dart';
import '../../style/text_styles.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: BlocBuilder<BottomNavCubit, BottomNavState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: KStyles().bold(
                      text: state.greetingMessage,
                      context: context,
                      size: 22,
                    ),
                  ),
                  state.cityName.isNotEmpty
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            KStyles().med(
                              text: state.cityName,
                              color: AppColors.kTextGrey,
                              context: context,
                              size: 12,
                            ),
                            KStyles().med(
                              text:
                                  "${state.currentCelsius} °C, ${state.currentWeather}",
                              context: context,
                              size: 12,
                              color: AppColors.kTextGrey,
                            ),
                          ],
                        )
                      : const SizedBox.shrink(),
                ],
              );
            },
          ),
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: AppColors.black,
              ),
              onPressed: () {
                context.go(RouteConstants.path.settings);
              },
            ),
          ],
        ),
      ],
    );
  }
}
