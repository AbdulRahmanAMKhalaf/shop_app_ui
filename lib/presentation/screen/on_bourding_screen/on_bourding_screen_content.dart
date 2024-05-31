import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/cores/utils/on_bourding_model/on_bourding_model.dart';
import 'package:shop_app_ui/presentation/controller/navigation_bloc.dart';
import 'package:shop_app_ui/presentation/screen/navigation_screen/navigationscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBourdingScreenContent extends StatelessWidget {
  const OnBourdingScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: Image(
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.fill,
                      image: AssetImage(onBourdingList[index].image),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: onBourdingList.length,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 1.w,
                      dotColor: Colors.grey.shade400,
                      activeDotColor: Colors.lightBlueAccent,
                      dotHeight: 1.h,
                      dotWidth: 2.w,
                      spacing: 2.w,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    onBourdingList[index].headTitle,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 30.px),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    onBourdingList[index].bodyText,
                    style: TextStyle(
                        fontSize: 20.px,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey),
                  ),
                ],
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: onBourdingList.length,
          ),
        ),
        SizedBox(height: 4.h,),
        Padding(
          padding: EdgeInsets.only(bottom: 6.0.h),
          child: InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                       create: (context) => NavigationBloc(),
                        child: const NavigationScreen()),
                  ),
                      (route) => false);
            },
            child: Container(
              height: 7.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(12.px),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 12.px,
                      offset: Offset.fromDirection(20.px, 10.px),
                      spreadRadius: 2.px),
                ],
              ),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Let\'s Start',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30.px),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.only(bottom: 3.0.h),
          child: RichText(
              maxLines: 1,
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'already have an account?',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 20.px,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                ),
                const TextSpan(text: ' '),
                const TextSpan(
                    text: 'Signin',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                    )),
              ])),
        ),
      ],
    );
  }
}
