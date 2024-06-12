import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_web/components/color.dart';
import 'package:portfolio_web/components/dimensions.dart';
import 'package:portfolio_web/components/strings.dart';
import 'package:portfolio_web/screens/projects/project_components/project_components.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 35.h),
          child: Column(
            children: [
              Dimensions.verticalSpacing(space: 32.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.w),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 24.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.r)
                  ),
                  child: Text(
                      AppStrings.projectShowcase,
                      style: Dimensions.regular(fontSize: 24.sp, fontWeight: FontWeight.w500, color: AppColors.textColor, letterSpacing: -0.25),
                      textAlign: TextAlign.center,
                    ).animate().fade().slideY(begin: -0.4, end: 0),
                ),
              ),
              Dimensions.verticalSpacing(space: 32.h),
              Expanded(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        pageController.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 100.sp,
                        color: AppColors.blueGreyDeep,
                      ),
                    ),
                    Expanded(child: agrospectrumWidgets(pageController),),
                    GestureDetector(
                      onTap: (){
                        pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 100.sp,
                        color: AppColors.blueGreyDeep,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
