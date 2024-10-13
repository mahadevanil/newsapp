import 'package:flutter/material.dart';

import 'font_styles.dart';

class KStyles {
//!-----------(light)--------------
  Text light(
      {required String text,
      required BuildContext context,
      Color? color,
      double? height,
      bool? softWrap,
      required double size,
      int? maxLines,
      TextAlign? textAlign,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: FontConst.poppins,
        height: height,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontConst().lightFont,
      ),
    );
  }

//!------------(reg)--------------
  Text reg(
      {required String text,
      required BuildContext context,
      Color? color,
      double? height,
      bool? softWrap,
      required double size,
      int? maxLines,
      TextAlign? textAlign,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: FontConst.poppins,
        height: height,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontConst().regularFont,
      ),
    );
  }

//!-------------(med)-------------------
  Text med(
      {required String text,
      required BuildContext context,
      Color? color,
      double? height,
      bool? softWrap,
      required double size,
      int? maxLines,
      TextAlign? textAlign,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: FontConst.poppins,
        height: height,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontConst().mediumFont,
      ),
    );
  }

//!-------------(semibold)------------
  Text semiBold(
      {required String text,
      required BuildContext context,
      Color? color,
      double? height,
      bool? softWrap,
      required double size,
      int? maxLines,
      TextAlign? textAlign,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: FontConst.poppins,
        height: height,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontConst().semiBoldFont,
      ),
    );
  }

//!-------------(bold)------------------
  Text bold(
      {required String text,
      required BuildContext context,
      Color? color,
      double? height,
      bool? softWrap,
      required double size,
      int? maxLines,
      TextAlign? textAlign,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: FontConst.poppins,
        height: height,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontConst().boldFont,
      ),
    );
  }

//!---------------(black)-------------------------
  Text black(
      {required String text,
      required BuildContext context,
      Color? color,
      double? height,
      bool? softWrap,
      required double size,
      int? maxLines,
      TextAlign? textAlign,
      TextOverflow overflow = TextOverflow.ellipsis}) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: FontConst.poppins,
        height: height,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        fontWeight: FontConst().blackFont,
      ),
    );
  }
}
