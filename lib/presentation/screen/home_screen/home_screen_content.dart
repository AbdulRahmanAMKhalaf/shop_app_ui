import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app_ui/cores/utils/category_model/category_model.dart';
import 'package:shop_app_ui/cores/utils/recommended_model/recommended_model.dart';
import 'package:shop_app_ui/presentation/screen/home_screen/widget/home_container_child.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.px),
      children: [
        /// icon + name + notification
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.yellow.shade600,
              radius: 20.px,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30.px,
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Hi AbdulRahman',
              style: TextStyle(
                fontSize: 20.px,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton.filledTonal(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.yellow.shade600)),
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Colors.white,
                      size: 30.px,
                    )),
                Container(
                  height: 3.h,
                  width: 3.5.w,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 2.h,
        ),

        ///let's go...
        Text(
          'Let\'s go get\nthe best discount',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              letterSpacing: 0.px,
              wordSpacing: -4.px,
              height: 0.h,
              color: Colors.black,
              fontSize: 40.px,
              fontWeight: FontWeight.w800),
        ),

        ///Enjoy...
        Text(
          'Enjoy the benefits!',
          style: TextStyle(
              height: 0.3.h,
              fontSize: 25.px,
              color: Colors.grey,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 3.h,
        ),

        ///category
        Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 22.px,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),

        ///category list
        SizedBox(
          height: 6.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.shade100,
                      borderRadius: BorderRadius.circular(15.px)),
                  child: Row(
                    children: [
                      ///image
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.px),
                            bottomLeft: Radius.circular(15.px)),
                        child: SizedBox(
                          height: 10.h,
                          width: 15.w,
                          child: Image(
                            image: NetworkImage(categoryList[index].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0.px),
                        child: Text(
                          categoryList[index].text,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.px,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 3.w,
                  ),
              itemCount: categoryList.length),
        ),
        SizedBox(
          height: 2.h,
        ),

        ///recommended + see all
        Row(
          children: [
            Text(
              'Recommended',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22.px,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20.px,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),

        /// recommended list
        ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 42.5.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(25.px),
                ),
                child: HomeContainerChild(
                  index: index,
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  height: 2.h,
                ),
            itemCount: recommendedList.length),
      ],
    );
  }
}
