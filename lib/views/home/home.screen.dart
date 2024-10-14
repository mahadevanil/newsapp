import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/cubit/home/home_cubit.dart';
import 'package:news_app/style/text_styles.dart';

import 'home_title.widget.dart';
import 'news_card.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return uiCon.bgFrame(
            body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kDim.kGap15,
                const CommonTitle(),
                kDim.kGap35,
                KStyles().semiBold(
                  text: "All News",
                  context: context,
                  size: 24,
                ),
                kDim.kGap35,
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: state.newsData?.articles?.length ?? 0,
                  separatorBuilder: (BuildContext context, int index) => (state
                                  .newsData
                                  ?.articles?[index]
                                  .author
                                  ?.isNotEmpty ??
                              false) &&
                          (state.newsData?.articles?[index].title?.isNotEmpty ??
                              false) &&
                          (state.newsData?.articles?[index].urlToImage
                                  ?.isNotEmpty ??
                              false)
                      ? kDim.kGap20
                      : const SizedBox.shrink(),
                  itemBuilder: (context, index) {
                    return (state.newsData?.articles?[index].author
                                    ?.isNotEmpty ??
                                false) &&
                            (state.newsData?.articles?[index].title
                                    ?.isNotEmpty ??
                                false) &&
                            (state.newsData?.articles?[index].urlToImage
                                    ?.isNotEmpty ??
                                false)
                        ? NewsCard(
                            title: state.newsData?.articles?[index].title ?? "",
                            subTitle:
                                "Author : ${state.newsData?.articles?[index].author ?? ""}",
                            onSavePressed: () {},
                            onTap: () {},
                            imageUrl:
                                state.newsData?.articles?[index].urlToImage ??
                                    "",
                          )
                        : const SizedBox.shrink();
                  },
                ),
                kDim.kGap20,
              ],
            ),
          ),
        ));
      },
    );
  }
}
