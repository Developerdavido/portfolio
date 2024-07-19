import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_web/components/color.dart';
import 'package:portfolio_web/components/dimensions.dart';
import 'package:portfolio_web/components/strings.dart';
import 'package:portfolio_web/dto/project_details.dart';
import 'package:portfolio_web/screens/projects/project_components/project_components.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  PageController pageController = PageController();

  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.1.sw, vertical: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimensions.verticalSpacing(space: 32.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
              width: 0.7.sw,
              child: projectTitle().animate().fade().slideY(begin: 0.4, end: 0),
            ),
            Dimensions.verticalSpacing(space: 32.h),
            Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: ProjectDetails.details.length,
                    itemBuilder: (context, index) {
                    var project = ProjectDetails.details[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.1.sh, horizontal: 0.05.sw),
                      child: projectImageContainer(
                          isLeft: index % 2 == 0,
                          title: project.name,
                          description: project.description,
                          image: project.titleImage,
                          callBack: (){
                            showCustomModal(project);
                          }
                      ),
                    );
                    })
            )
          ],
        ),
      )
    );
  }

  Future<Object?> showCustomModal(ProjectDetails details) {
    return showGeneralDialog(
        context: context,
        pageBuilder: (ctx, a1, a2) {
          return Container();
        },
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.3),
        barrierLabel: "dialog barrier",
        transitionDuration: const Duration(milliseconds: 400),
        transitionBuilder: (context, a1, a2, child) {
          var curve = Curves.easeInOut.transform(a1.value);
          return Transform.scale(scale: curve, child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0.2.sw, vertical: 0.1.sh),
            height: 1.sh,
            width: 1.sw,
            child: Column(
              children: [
                Dimensions.verticalSpacing(space: 48.h),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric( vertical: 20.h),
                      child: Icon(Icons.clear, size: 64.sp, color: AppColors.textColor,),
                    ),
                  ),
                ),
               Expanded(child: agrospectrumWidgets(
                   pageController,
                   images: details.images,
                   itemCount: details.images!.length,
                   onPageChanged: (index) {
                 setState(() {
                   currentPage = index;
                 });
               }))
              ],
            ),
          ));
        });
  }
}
