import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_web/components/dimensions.dart';
import 'package:portfolio_web/screens/about_me/about_me_components/about_me_components.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
            width: 0.5.sw,
            child: aboutMeTitle().animate().fade().slideY(begin: 0.4, end: 0),
          ),
          Dimensions.verticalSpacing(space: 24.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 0.5.sw,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      aboutMeMessage().animate(delay: 300.ms).fade().slideY(begin: 0.4, end: 0),
                      Dimensions.verticalSpacing(space: 52.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: AnimateList(
                          interval: 300.ms,
                          effects: const [FadeEffect(),SlideEffect(begin: Offset(0.3, 0), end: Offset(0,0))],
                          children: [
                            workExperienceWidget(),
                            devStackWidget(),
                            acknowledgementWidget()
                          ],
                        )
                      )
                    ],
                  )
                ),
                myImage()
              ],
            ),
          ),
          Dimensions.verticalSpacing(space: 24.h),

        ],
      ),
    );
  }
}
