
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:portfolio_web/components/color.dart';
import 'package:portfolio_web/components/strings.dart';

import '../../../components/dimensions.dart';

agrospectrumWidgets(PageController pageController, {List<String>? images, int? itemCount, Function(int)? onPageChanged})  {
  return PhotoViewGallery.builder(
    scrollPhysics: const BouncingScrollPhysics(),
    allowImplicitScrolling: true,
    builder: (BuildContext context, int index) {
      return PhotoViewGalleryPageOptions(
        imageProvider: AssetImage(images![index]),
        initialScale: PhotoViewComputedScale.contained * 0.8,
      );
    },
    itemCount: itemCount,
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
    backgroundDecoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(32.r)
    ),
    pageController: pageController,
    onPageChanged: onPageChanged,
  );
}

//this widget will help viewing the projects
Widget projectImageContainer({VoidCallback? callBack, bool isLeft = false, String? description, String? image, String? title}) {
  return Container(
    width: 0.6.sw,
    height: 0.4.sh,
    padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 48.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: AppColors.blueGrey50,
              offset: isLeft ? const Offset(-10, 10) : const Offset(10, 10),
              blurRadius: 4,
              spreadRadius: 1
          )
        ]
    ),
    child: isLeft ? leftContainer(onTap: callBack, description: description, image: image, title: title) : rightContainer(onTap: callBack, description: description, image: image, title: title),
  );
}

//the right container
rightContainer({VoidCallback? onTap, String? description, String? title, String? image}) {
  return Container(
    width: 0.5.sw,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 0.4.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!,
                style: Dimensions.heading(fontSize: 32.sp,),
                textAlign: TextAlign.left,
              ),
              Dimensions.verticalSpacing(space: 8.h),
              Text(description!,
                style: Dimensions.regular(fontSize: 32.sp,),
                textAlign: TextAlign.left,
              ),
              Dimensions.verticalSpacing(space: 8.h),
              GestureDetector(
                onTap: onTap,
                child: Text("Click to see more",
                  style: Dimensions.regular(fontSize: 32.sp,color: Colors.green),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 0.25.sh,
          width: 0.25.sh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                image ?? ""
              )
            )
          ),
        )
      ],
    ),
  );
}
//the left container
leftContainer({VoidCallback? onTap,String? title, String? description, String? image}) {
  return Container(
    width: 0.5.sw,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 0.25.sh,
          width: 0.25.sh,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                      image ?? ""
                  )
              )
          ),
        ),
        SizedBox(
          width: 0.4.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title!,
                style: Dimensions.heading(fontSize: 32.sp,),
                textAlign: TextAlign.left,
              ),
              Dimensions.verticalSpacing(space: 8.h),
              Text(description!,
                style: Dimensions.regular(fontSize: 32.sp,),
                textAlign: TextAlign.left,
              ),
              Dimensions.verticalSpacing(space: 8.h),
              GestureDetector(
                onTap: onTap,
                child: Text("Click to see more",
                  style: Dimensions.regular(fontSize: 32.sp, color: Colors.green),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),

      ],
    ),
  );
}

Widget projectTitle() {
  return Text(
    "Some interesting applications I have worked on.",
    style: Dimensions.heading(
        fontSize: 72.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor),
  );
}