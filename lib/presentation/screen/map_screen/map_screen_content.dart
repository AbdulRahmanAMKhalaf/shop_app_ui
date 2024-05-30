import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/cores/utils/images/images.dart';
import 'package:shop_app_ui/cores/utils/recommended_model/recommended_model.dart';

class MapScreenContent extends StatelessWidget {
  const MapScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(
          fit: BoxFit.cover,
            width: Adaptive.w(100),
            height: Adaptive.h(100),
            image:NetworkImage(
              AppImages.mapImage,
            )
        ),
        Padding(
          padding:  EdgeInsets.all(5.0.w),
          child: Column(
            children: [
              SafeArea(
                child: TextFormField(
                  enabled: true,
                  autocorrect: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton.filledTonal(
                        onPressed:(){},
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                        icon:const Icon(Icons.location_on_outlined,color: Colors.white,size: 30,)),
                    prefixIcon: Icon(Icons.search,color: Colors.yellow,size: 40.px,),
                    hintText: 'Search event discounts...',
                    hintStyle: TextStyle(
                      height: 0.3.h,
                      color: Colors.grey,
                      fontSize: 20.px,
                      fontWeight: FontWeight.w600,
                    ),
                    fillColor: Colors.white,
                    hoverColor: Colors.yellow,
                    enabled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 5.px),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.px),
                      borderSide: const BorderSide(color: Colors.white,)
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.all(2.0.w),
                child: Container(
                  height: 3.h,
                  width: 3.w,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade700,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellowAccent.shade100,
                        spreadRadius: 10.px,
                        blurRadius: 10.px,
                      ),
                    ],
                    shape: BoxShape.circle
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding: EdgeInsets.only(left: Adaptive.w(30)),
                child: Container(
                  height: 3.h,
                  width: 3.w,
                  decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellowAccent.shade100,
                          spreadRadius: 10.px,
                          blurRadius: 10.px,
                        ),
                      ],
                      shape: BoxShape.circle
                  ),
                ),
              ),
              Container(
                height: 3.h,
                width: 3.w,
                decoration: BoxDecoration(
                    color: Colors.yellow.shade700,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.yellowAccent.shade100,
                        spreadRadius: 10.px,
                        blurRadius: 10.px,
                      ),
                    ],
                    shape: BoxShape.circle
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          ///return
          child: CarouselSlider.builder(
            itemCount:recommendedList.length,
            options:CarouselOptions(
              viewportFraction: 0.6,
              height: 39.h,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              initialPage: 0,
            ) ,
            itemBuilder:(context, index, realIndex) {
          return Container(
            width: Adaptive.w(50),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20.px)
            ),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                  child: SizedBox(
                    height: Adaptive.h(20),
                    width: double.infinity,
                    child: Image(
                      image:NetworkImage(
                          recommendedList[index].image
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height:1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommendedList[index].type,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 25.px
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month_outlined,color: Colors.yellow.shade500,size: 30.px,),
                                  SizedBox(width: 2.w,),
                                  Text(
                                    DateFormat.yMMMd().format(DateTime.now()),
                                    style: TextStyle(
                                      fontSize: 15.px,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1.h,),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined,color: Colors.yellow.shade500,size: 30.px,),
                                  SizedBox(width: 2.w,),
                                  Text(
                                    '${DateFormat.H().format(DateTime(0, 0, 0, 9))} AM - ${DateFormat.H().format(DateTime(0,0,0,10))} PM',
                                    style: TextStyle(
                                      fontSize: 15.px,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow.shade400,
                            ),
                            height:Adaptive.h(9),
                            width: Adaptive.w(13),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Up to\n${recommendedList[index].discount}',
                                style: TextStyle(
                                  fontSize: 17.px,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
            },
          ),
        )
      ],
    );
  }
}
