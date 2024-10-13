import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/constants/string.constants.dart';
import 'package:news_app/cubit/stepTwo/step_two_cubit.dart';
import 'package:news_app/utils/enums.dart';

import '../../../constants/route.constants.dart';
import '../../../style/colors.dart';
import '../../../style/text_styles.dart';
import '../category_box.widget.dart';

class StepTwoScreen extends StatelessWidget {
  const StepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StepTwoCubit>().init();
    });
    final ScrollController scrollCtrl = ScrollController();
    return BlocListener<StepTwoCubit, StepTwoState>(
      listener: (context, state) {
        if (state.loadingStatus == LoadingStatus.success) {
          context.go(
            RouteConstants.path.enterLocation,
          );
        }
      },
      child: uiCon.bgFrame(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    kDim.kGap30,
                    KStyles().semiBold(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      context: context,
                      text: StringConst.stepTwoTitle,
                      size: 25,
                    ),
                    kDim.kGap10,
                    KStyles().med(
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      context: context,
                      text: StringConst.stepTwoSubTitle,
                      size: 16,
                    ),
                    kDim.kGap15,
                    BlocBuilder<StepTwoCubit, StepTwoState>(
                      builder: (context, state) {
                        return Flexible(
                          child: Scrollbar(
                            radius: const Radius.circular(100),
                            controller: scrollCtrl,
                            child: GridView.count(
                              controller: scrollCtrl,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              shrinkWrap: true,
                              children: List.generate(
                                state.categoryList.length,
                                (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: CategoryBox(
                                      text: state.categoryList[index].text,
                                      color:
                                          (state.categoryList[index].isSelected)
                                              ? AppColors.primaryColor
                                              : null,
                                      textColor:
                                          (state.categoryList[index].isSelected)
                                              ? AppColors.secondary
                                              : null,
                                      onTap: () {
                                        context
                                            .read<StepTwoCubit>()
                                            .onCategoryTap(index: index);
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              kDim.kGap15,
              uiCon.newsButton(
                width: double.infinity,
                borderRadius: kDim.kRadius100,
                height: 50,
                child: KStyles().semiBold(
                    text: StringConst.enter,
                    context: context,
                    size: 18,
                    color: AppColors.secondary),
                color: AppColors.primaryColor,
                onPressed: () {
                  context.read<StepTwoCubit>().onEnterTap();
                },
              ),
              kDim.kGap25,
            ],
          ),
        ),
      ),
    );
  }
}
