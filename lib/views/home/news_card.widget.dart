import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/style/text_styles.dart';

import '../../config/config.dart';
import '../../style/colors.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    this.onTap,
    this.onSavePressed,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });
  final void Function()? onTap;
  final void Function()? onSavePressed;
  final String title;
  final String subTitle;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
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
        color: AppColors.secondary,
        borderRadius: kDim.kRadius25,
      ),
      // height: 200,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: kDim.kRadius15,
                          child: CachedNetworkImage(
                            errorWidget: (context, url, error) {
                              return const Icon(
                                Icons.error,
                                color: AppColors.primaryColor,
                              );
                            },
                            fit: BoxFit.cover,
                            imageUrl: imageUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                  kDim.kGap15,
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KStyles().semiBold(
                            // maxLines: 1,
                            text: title,
                            overflow: TextOverflow.visible,
                            context: context,
                            size: 14,
                          ),
                          kDim.kGap10,
                          KStyles().reg(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            text: subTitle,
                            context: context,
                            size: 12,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark_border_rounded,
              color: AppColors.black,
              size: 30,
            ),
            onPressed: onSavePressed,
          ),
        ],
      ),
    );
  }
}
