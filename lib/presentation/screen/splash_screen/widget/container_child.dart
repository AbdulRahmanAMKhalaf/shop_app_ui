import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/cores/utils/images/images.dart';

class ContainerChild extends StatelessWidget {
  const ContainerChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'A&A \n',
                  style: TextStyle(
                    color: Colors.greenAccent.shade200,
                    fontSize: 50.px,
                    fontWeight: FontWeight.w700,
                  )),
              TextSpan(
                  text: 'Shop',
                  style: TextStyle(
                    fontSize: 50.px,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        LottieBuilder.network(
          AppImages.splashImage,
          backgroundLoading: true,
          fit: BoxFit.fill,
          width: 70.w,
          height: 30.h,
        )
      ],
    );
  }
}
