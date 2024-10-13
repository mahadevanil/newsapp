import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/constants/string.constants.dart';
import 'package:news_app/style/text_styles.dart';
import 'package:news_app/utils/enums.dart';

import '../../../constants/route.constants.dart';
import '../../../cubit/step-one/step_one_cubit.dart';
import '../../../style/colors.dart';

class EnterYourNameScreen extends StatelessWidget {
  const EnterYourNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StepOneCubit>().init();
    });
    final TextEditingController nameCtrl = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return BlocConsumer<StepOneCubit, StepOneState>(
      listener: (context, state) {
        if (state.loadingStatus == LoadingStatus.success) {
          context.go(RouteConstants.path.stepTwo);
        }
      },
      builder: (context, state) {
        return uiCon.bgFrame(
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: Column(
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
                          text: StringConst.whatsYourName,
                          size: 25,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: KStyles().reg(
                          context: context,
                          text: StringConst.pleaseEnterYourLegalName,
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
                          validator: (String? value) {
                            return fCon.nameValidator(value);
                          },
                          inputFormatters: [
                            fCon.textInputFormatter(
                              TextFormatType.alphabet,
                            )
                          ],
                          controller: nameCtrl,
                          hintText: StringConst.enterYourName,
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
                    child: KStyles().semiBold(
                        text: StringConst.enter,
                        context: context,
                        size: 18,
                        color: AppColors.secondary),
                    color: AppColors.primaryColor,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<StepOneCubit>().onEnterTap(
                              name: nameCtrl.text,
                            );
                      }
                    },
                  ),
                ),
                kDim.kGap25,
              ],
            ),
          ),
        );
      },
    );
  }
}
