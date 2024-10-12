import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/config.dart';
import '../gen/assets.gen.dart';
import '../gen/fonts.gen.dart';
import '../style/colors.dart';

class UiConstants {
  //*---------------------------------------------------------------- (Svg_Icon)
  SizedBox svgIcon(
      {required double ht,
      required double wd,
      required String assetImage,
      Color? color}) {
    return SizedBox(
      height: ht,
      width: wd,
      child: SvgPicture.asset(assetImage,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color,
                  BlendMode.srcIn,
                )
              : null
          // color: color,
          ),
    );
  }

  //*----------------(bg image)
  Container bgImage({
    required Widget child,
    required String image,
  }) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: child,
    );
  }

  TextFormField commonTextField(
      {required String hintText,
      int maxLines = 1,
      TextEditingController? controller,
      Color? fillColor,
      List<TextInputFormatter>? inputFormatters}) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: kDim.kRadius10,
          borderSide: const BorderSide(
            color: AppColors.black,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: kDim.kRadius10,
          borderSide: const BorderSide(
            color: AppColors.veryDimTextColor,
            width: 0.5,
          ),
        ),
        fillColor: fillColor ?? AppColors.white,
        isDense: true,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.veryDimTextColor,
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontFamily: FontFamily.poppins,
        fontSize: 16,
        decoration: TextDecoration.none, // Ensure no underline on text
      ),
    );
  }

  //*---------------------------------------------------------------- (Transparent_Button)
  TextButton transparentButton(
      {required Widget child,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      WidgetStateProperty<Size?>? minimumSize,
      WidgetStateProperty<EdgeInsetsGeometry?>? padding,
      WidgetStateProperty<Color?> overlayColor =
          const WidgetStatePropertyAll(AppColors.trans)}) {
    return TextButton(
        style: ButtonStyle(
            padding: padding,
            minimumSize: minimumSize,
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: child);
  }

  //*---------------------------------------------------------------- (round button)
  InkWell roundButton({
    required Widget child,
    required void Function()? onTap,
  }) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: AppColors.black,
      highlightColor: AppColors.trans,
      borderRadius: kDim.kRadius100,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kDim.kRadius100,
        ),
        child: child,
      ),
    );
  }

//*---------------------------------------------------------------- (Back_Button)
  InkWell backButton(
      {required VoidCallback onPressed,
      required BuildContext context,
      Color? color}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: kDim.kRadius50,
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color ?? AppColors.black,
            borderRadius: kDim.kRadius50,
          ),
          child: svgIcon(
            ht: 30,
            wd: 15,
            assetImage: Assets.icons.backButton,
          )),
    );
  }

  //*-------------------(elevated button)
  Container newsButton(
      {double? width,
      required double height,
      required Widget child,
      required Color color,
      required void Function()? onPressed,
      BorderRadiusGeometry? borderRadius,
      WidgetStateProperty<EdgeInsetsGeometry?>? padding}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
            padding: padding ?? const WidgetStatePropertyAll(EdgeInsets.zero),
            backgroundColor: WidgetStatePropertyAll(
              color,
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.zero,
            ))),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
