import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/cubit/location/location_cubit.dart';
import 'package:news_app/utils/enums.dart';

import '../../../constants/route.constants.dart';
import '../../../constants/string.constants.dart';
import '../../../style/colors.dart';
import '../../../style/text_styles.dart';

class EnterLocationScreen extends StatelessWidget {
  const EnterLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LocationCubit>().init();
    });
    final TextEditingController locationCtrl = TextEditingController();

    return BlocConsumer<LocationCubit, LocationState>(
      listener: (context, state) {
        if (state.finishLoadingStatus == LoadingStatus.success) {
          context.go(RouteConstants.path.bottomNav);
        }
      },
      builder: (context, state) {
        if (state.cityName.isNotEmpty) {
          locationCtrl.text =
              state.cityName; // Update the TextField with the city name
        }
        return uiCon.bgFrame(
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    kDim.kGap30,
                    Container(
                      alignment: Alignment.center,
                      child: KStyles().med(
                        context: context,
                        text: StringConst.whereAreYouLocated,
                        size: 25,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      alignment: Alignment.center,
                      child: KStyles().reg(
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        context: context,
                        text:
                            "Enter your city manually or let us auto-detect it.",
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      uiCon.commonTextField(
                        controller: locationCtrl,
                        onChanged: (String value) {
                          context.read<LocationCubit>().onChanged(value);
                        },
                        hintText: "Enter your city name",
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: uiCon.newsButton(
                  width: double.infinity,
                  borderRadius: kDim.kRadius100,
                  height: 50,
                  child: state.loadingStatus == LoadingStatus.loading
                      ? Center(child: uiCon.loader())
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KStyles().semiBold(
                                text: StringConst.useMyLocation,
                                context: context,
                                size: 18,
                                color: AppColors.secondary),
                            kDim.kGap10,
                            const Icon(
                              Icons.location_on,
                              color: AppColors.secondary,
                            ),
                          ],
                        ),
                  color: AppColors.primaryColor,
                  onPressed: () {
                    context.read<LocationCubit>().getLocation();
                  },
                ),
              ),
              kDim.kGap10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: uiCon.newsButton(
                  width: double.infinity,
                  borderRadius: kDim.kRadius100,
                  height: 50,
                  child: KStyles().semiBold(
                      text: StringConst.finish,
                      context: context,
                      size: 18,
                      color: AppColors.secondary),
                  color: AppColors.primaryColor,
                  onPressed: () {
                    context
                        .read<LocationCubit>()
                        .onFinishTap(location: locationCtrl.text);
                  },
                ),
              ),
              kDim.kGap10,
              TextButton(
                onPressed: () {
                  context.read<LocationCubit>().onFinishTap(location: '');
                },
                child: KStyles().reg(
                  text: "Skip this step",
                  context: context,
                  size: 16,
                ),
              ),
              kDim.kGap25,
            ],
          ),
        );
      },
    );
  }
}
