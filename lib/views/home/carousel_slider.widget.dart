import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    super.key,
    required this.images,
    this.onPageChanged,
  });

  final List<String> images;
  final Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      itemBuilder: (context, index, realIndex) =>
          //!------(carousel image)
          InkWell(
        borderRadius: kDim.kRadius15,
        onTap: () {},
        child: SizedBox(
          height: 300,
          child: ClipRRect(
            borderRadius: kDim.kRadius15,
            child: Image.asset(
              images[index],
              fit: BoxFit.fitHeight,
            ),
          ),
          //----- commented for future use
          //  CachedNetworkImage(
          //   imageUrl: images[index],
          //   fit: BoxFit.scaleDown,
          //   errorWidget: (context, url, error) =>
          //       const Icon(Icons.error, color: Colors.white),
          // ),
        ),
      ),
      options: CarouselOptions(
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        height: 300,
        onPageChanged: onPageChanged,
        autoPlay: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.35,
        viewportFraction: 0.7,
      ),
    );
  }
}
