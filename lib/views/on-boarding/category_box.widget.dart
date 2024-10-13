import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../style/colors.dart';
import '../../style/text_styles.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.text,
    required this.onTap,
    this.textColor,
    this.color,
  });
  final String text;
  final void Function()? onTap;
  final Color? textColor;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: kDim.kRadius20,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColors.shadowColor,
              offset: Offset(
                1.0,
                1.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            //BoxShadow
          ],
          color: color ?? AppColors.secondary,
          borderRadius: kDim.kRadius20,
        ),
        child: Center(
          child: KStyles().med(
            text: text,
            color: textColor,
            context: context,
            size: 15,
          ),
        ),
      ),
    );
  }
}
