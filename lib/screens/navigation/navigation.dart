import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_web/components/dimensions.dart';

import '../home/home_components/home_components.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {

  int currentPage = 0;

  changePage(int index){
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topWidget(context, currentIndex: currentPage, getCurrentIndex: changePage).animate(delay: 500.ms,).fade().slideY(begin: -1, end: 0),
          Expanded(
              child: selectedScreen(currentPage)!
          ),
          bottomNav(mobile: Dimensions().isMobile(context))
        ]
      )
    );
  }
}
