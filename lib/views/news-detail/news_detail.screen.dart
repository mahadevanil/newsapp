import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/data/model/news/news_response.model.dart';
import 'package:news_app/style/colors.dart';
import 'package:news_app/style/text_styles.dart';
import 'package:share_plus/share_plus.dart';

import '../../gen/assets.gen.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({
    super.key,
    required this.article,
  });
  final Article article;

  @override
  Widget build(BuildContext context) {
    return uiCon.bgFrame(
      appBar: uiCon.customAppBar(
        actions: [
          IconButton(
            onPressed: () {
              Share.share(
                'Check out this news: ${article.url}',
                subject: article.title,
              );
            },
            icon: const Icon(
              Icons.share,
              color: AppColors.black,
            ),
          )
        ],
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: uiCon.svgIcon(
              ht: 10,
              wd: 10,
              assetImage: Assets.icons.back,
            ),
          ),
        ),
        context: context,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            kDim.kGap30,
            // title
            KStyles().bold(
              overflow: TextOverflow.visible,
              text: article.title ?? "",
              context: context,
              size: 25,
            ),
            kDim.kGap05,
            const Divider(
              color: AppColors.borderColor,
              thickness: 0.5,
            ),
            KStyles().light(
              text: "Author : ${article.author ?? ""}",
              context: context,
              size: 13,
            ),
            KStyles().light(
              text:
                  "Published Date : ${fCon.formatDate(article.publishedAt?.toIso8601String() ?? "")}",
              context: context,
              size: 13,
            ),
            kDim.kGap25,
            // image
            uiCon.urlImage(
              borderRadius: BorderRadius.zero,
              height: height * .3,
              width: width,
              url: article.urlToImage ?? "",
            ),
            kDim.kGap25,
            KStyles().reg(
              overflow: TextOverflow.visible,
              text: article.description ?? "",
              context: context,
              size: 16,
            ),
            kDim.kGap15,
            KStyles().reg(
              overflow: TextOverflow.visible,
              text: article.content ?? "",
              context: context,
              size: 16,
            ),
            // content
          ],
        ),
      )),
    );
  }
}
