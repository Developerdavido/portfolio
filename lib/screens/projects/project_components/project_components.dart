
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:portfolio_web/components/color.dart';
import 'package:portfolio_web/components/strings.dart';

agrospectrumWidgets(PageController pageController, {Function(int)? onPageChanged})  {
  return PhotoViewGallery.builder(
    scrollPhysics: const BouncingScrollPhysics(),
    allowImplicitScrolling: true,
    builder: (BuildContext context, int index) {
      return PhotoViewGalleryPageOptions(
        imageProvider: AssetImage(AppStrings.appImages[index]),
        initialScale: PhotoViewComputedScale.contained * 0.8,
      );
    },
    itemCount: AppStrings.appImages.length,
    loadingBuilder: (context, event) => Center(
      child: Container(
        width: 20.0,
        height: 20.0,
        child: CircularProgressIndicator(
          value: event == null
              ? 0
              : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
        ),
      ),
    ),
    backgroundDecoration: const BoxDecoration(
      color: Colors.white
    ),
    pageController: pageController,
    onPageChanged: onPageChanged,
  );
}