import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/style/text_styles.dart';
import 'package:news_app/utils/enums.dart';

import '../../style/colors.dart';

class EnterYourNameScreen extends StatelessWidget {
  const EnterYourNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameCtrl = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  kDim.kGap20,
                  Container(
                    alignment: Alignment.center,
                    child: KStyles().med(
                      context: context,
                      text: "What is your name?",
                      size: 25,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: KStyles().reg(
                      context: context,
                      text: "Please enter your legal name",
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    uiCon.commonTextField(
                      inputFormatters: [
                        fCon.textInputFormatter(
                          TextFormatType.alphabet,
                        )
                      ],
                      controller: nameCtrl,
                      hintText: "Enter your name",
                    ),
                    uiCon.newsButton(
                      width: double.infinity,
                      borderRadius: kDim.kRadius100,
                      height: 50,
                      child: KStyles().semiBold(
                          text: "Enter",
                          context: context,
                          size: 18,
                          color: AppColors.white),
                      color: AppColors.buttonBlue,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
