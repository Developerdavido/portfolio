import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_web/components/dimensions.dart';
import 'package:portfolio_web/screens/home/home_components/home_components.dart';
import 'package:flutter/animation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: AnimateList(
          interval: 300.ms,
          effects: const [FadeEffect(), SlideEffect(begin: Offset(0, 0.2), end: Offset(0, 0))],
          children: [
            name(),
            Dimensions.verticalSpacing(),
            availability(),
            Dimensions.verticalSpacing(),
            message(),
            Dimensions.verticalSpacing(),
            // customButton("About me👋🏼", onTap: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (_)))
            // })
          ],
        )
      ),
    );
  }
}
