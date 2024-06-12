import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_web/components/dimensions.dart';
import 'package:portfolio_web/screens/about_me/about_me.dart';
import 'package:portfolio_web/screens/home/home.dart';
import 'package:portfolio_web/screens/projects/project.dart';

import '../../../components/color.dart';

List<Widget> navigatorItemsList({bool? activeIndex = false}) {
  return [
    animatedText("Home", isActive: activeIndex),
    animatedText("About me", isActive: activeIndex),
    animatedText("All Projects", isActive: activeIndex),
  ];
}

Widget? selectedScreen(int currentIndex) {
  List<Widget> screens = const [Home(), AboutMe(), Project()];
  if (screens[currentIndex] != null) {
    return screens[currentIndex];
  }
  return null;
}

Widget topWidget(BuildContext context,
    {int? currentIndex, void Function(int)? getCurrentIndex}) {
  return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 40.h),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 15,
            spreadRadius: 0.1,
            color: Colors.grey.withOpacity(0.2))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(navigatorItemsList().length, (index) {
          var navigatorItem =
              navigatorItemsList(activeIndex: currentIndex == index)[index];
          return GestureDetector(
              onTap: () {
                getCurrentIndex!(index);
              },
              child: navigatorItem);
        }),
      ));
}

animatedText(String text, {bool? isActive = false}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: AnimatedContainer(
        duration: const Duration(milliseconds: 600),
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        decoration: BoxDecoration(
            color: isActive! ? AppColors.blueGrey50 : Colors.white,
            borderRadius: BorderRadius.circular(12.r)),
        child: Text(
          text,
          style: isActive
              ? Dimensions.regular(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textColor)
              : Dimensions.regular(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColors.textColor),
        )),
  );
}

name() {
  return Text(
    "David Simeon",
    style: Dimensions.heading(
        fontSize: 128.sp,
        fontWeight: FontWeight.w800,
        color: AppColors.textColor),
  );
}

availability({Color? iconColor}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.circle_rounded,
        color: iconColor ?? Colors.lightGreenAccent,
        size: 24.sp,
      ),
      Dimensions.horizontalSpacing(space: 4),
      Text(
        "Available to work on small and medium scale projects",
        style: Dimensions.caption(
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.greyColor),
      ),
    ],
  );
}

message() {
  return SizedBox(
    width: 0.3.sw,
    child: Text(
      "I am a passionate mobile developer with about 5 years experience in mobile development. I enjoy building solutions and bringing ideas to life. I am open to work on small, medium to large scale flutter projects.",
      style: Dimensions.regular(
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.textColor),
      textAlign: TextAlign.center,
    ),
  );
}

customButton(String btnText,
    {Color? btnColor,
    Color? hoverColor,
    String? text,
    VoidCallback? onTap,
    Function(bool)? onHover}) {
  return InkWell(
    onTap: onTap,
    onHover: (onHover) {
      if (onHover) {
        hoverColor = Colors.lightGreen;
        btnColor = Colors.lightGreen;
      }
    },
    child: Container(
      width: 0.2.sw,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.w),
      decoration: BoxDecoration(
        color: AppColors.blueGreyDeep,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Text(
          btnText,
          style: Dimensions.caption(
              fontSize: 24.sp,
              fontWeight: FontWeight.normal,
              color: AppColors.blueGrey50),
        ),
      ),
    ),
  );
}

bottomNav({bool? mobile = false}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
    color: Colors.white,
    child: mobile! ? Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: AnimateList(
        interval: 300.ms,
        delay: 200.ms,
        effects: [FadeEffect(), ScaleEffect()],
        children: [
          bottomNavItems(text: "+233548752965", data: FeatherIcons.phone),
          Dimensions.verticalSpacing(space: 24.h),
          bottomNavItems(text: "d.dartvada@gmail.com", data: FeatherIcons.mail),
          Dimensions.verticalSpacing(space: 24.h),
          bottomNavItems(text: "davidDeveloper", data: FeatherIcons.github),

        ]
      ),
    ) : Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        bottomNavItems(text: "+233548752965", data: FeatherIcons.phone),
        Dimensions.horizontalSpacing(space: 24.w),
        bottomNavItems(text: "d.dartvada@gmail.com", data: FeatherIcons.mail),
        Dimensions.horizontalSpacing(space: 24.w),
        bottomNavItems(text: "developerDavido", data: FeatherIcons.github),
      ],
    ),
  );
}

bottomNavItems({String? text, IconData? data}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(data,
        size: 28.sp,
        color: AppColors.blueGreyDeep,
      ),
      Dimensions.horizontalSpacing(space: 6.w),
      Text(
        text ?? "",
        style: Dimensions.regular(
            fontSize: 32.sp,
            fontWeight: FontWeight.normal,
            color: AppColors.textColor),
      )
    ],
  );
}