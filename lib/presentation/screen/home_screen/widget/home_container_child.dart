import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/cores/utils/recommended_model/recommended_model.dart';

class HomeContainerChild extends StatelessWidget {
   const HomeContainerChild({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0.px),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            fit: StackFit.passthrough,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.px),
                child: SizedBox(
                  height: Adaptive.h(30),
                  width: Adaptive.w(100),
                  child: Image(
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    image:
                    NetworkImage(recommendedList[index].image),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0.px),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 5.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(15.px),
                          color: Colors.black.withOpacity(0.5.px)),
                      child: Center(
                        child: Text(
                          recommendedList[index].type,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.px,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 7.h,
                      width: 25.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow),
                      child: Center(
                        child: Text(
                          'up to\n${recommendedList[index].discount}',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.px,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: Colors.yellow.shade600,
                size: 30.px,
              ),
              SizedBox(width: 1.w,),
              Text(
                DateFormat.yMMMd().format(DateTime.now()),
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.px,
                    color: Colors.black
                ),

              ),
              SizedBox(width: 3.w,),
              Icon(
                Icons.watch_later_outlined,
                color: Colors.yellow.shade600,
                size: 30.px,
              ),
              SizedBox(width: 1.w,),
              Text(
                '${DateFormat.H().format(DateTime.utc(0,0,0,9))}AM - ${DateFormat.H().format(DateTime.utc(0,0,0,10))}PM',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.px,
                    color: Colors.black
                ),

              ),
              const Spacer(),
              IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.favorite,color: Colors.red,size: 30.px,))
            ],
          ),
        ],
      ),
    );
  }
}
