import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/color.dart';
import '../../../components/dimensions.dart';

Widget aboutMeTitle() {
  return Text(
    "Some fun stuff about me",
    style: Dimensions.heading(
        fontSize: 72.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textColor),
  );
}

Widget aboutMeMessage() {
  return SizedBox(
    width: 0.3.sw,
    child: Text(
      "I am a mid/Senior flutter developer with about 4+ years of experience building innovative applications. \n\nI have had the opportunity to build applications on utility, services and agri-tech. \n\nIn my spare time, I enjoy video-gaming, watching sci-fi and intellectual movies and hanging out with friends and family.",
      style: Dimensions.regular(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.textColor),
      textAlign: TextAlign.left,
    ),
  );
}

myImage() {
  return Container(
    width: 0.2.sw,
    height: 0.3.sw,
    padding: EdgeInsets.all(16.w),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24.r),
      image: const DecorationImage(
        image: AssetImage('assets/images/david_home.jpeg'),
        fit: BoxFit.cover
      ),
      boxShadow: [
        BoxShadow(
            offset: const Offset(4, 10),
            blurRadius: 15,
            spreadRadius: 0.1,
            color: Colors.grey.withOpacity(0.2)
        )
      ]
    ),
  );
}

//experienceText
captionText(String text) {
  return Text(
    text,
    style: Dimensions.caption(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor),
  );
}

workExperienceWidget() {
  return SizedBox(
    width: 0.1.sw,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Work experience",
          style: Dimensions.caption(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor),
        ),
        Dimensions.verticalSpacing(space: 32.h),
        captionText("Mobile Developer at BroadSpectrum Ltd, 2021-Date"),
        Dimensions.verticalSpacing(),
        captionText("Mobile Developer at Omni strategies, 2023"),
        Dimensions.verticalSpacing(),
        captionText("Mobile Developer at Omnile technologies, 2020-2022"),
      ],
    ),
  );
}

devStackWidget() {
  return SizedBox(
    width: 0.1.sw,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dev Stack",
          style: Dimensions.caption(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor),
        ),
        Dimensions.verticalSpacing(space: 32.h),
        captionText("Flutter"),
        Dimensions.verticalSpacing(),
        captionText("Dart"),
        Dimensions.verticalSpacing(),
        captionText("Git"),
        Dimensions.verticalSpacing(),
        captionText("Bloc"),
        Dimensions.verticalSpacing(),
        captionText("Postman e.t.c"),
      ],
    ),
  );
}

acknowledgementWidget() {
  return SizedBox(
    width: 0.1.sw,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Acknowledgements",
          style: Dimensions.caption(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor),
        ),
        Dimensions.verticalSpacing(space: 32.h),
        captionText("Agritech startup of the year 2023, (Agrospectrum)"),
      ],
    ),
  );
}
