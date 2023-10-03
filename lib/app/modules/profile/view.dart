import 'package:animal_search_app/app/core/values/colors.dart';
import 'package:animal_search_app/app/core/values/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: 130.0.h,
                        decoration: BoxDecoration(
                          color: ColorConstant.secondry,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.w, vertical: 2.h),
                              child: Container(
                                height: 34.0.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: ColorConstant.primary),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 14.w),
                                  child: Center(
                                    child: Text(
                                      "Following",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: ColorConstant.white,
                                          fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 37.h),
                        child: Container(
                          child: CircleAvatar(
                            radius: 75.0.r,
                            backgroundImage: AssetImage(ImagesConstant.profile),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Shane Mathias",
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: ColorConstant.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Text(
                        "Co founder 🐒",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: ColorConstant.white,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundImage: AssetImage(ImagesConstant.snowy),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 3.h),
                            child: Text(
                              "Snowy",
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 27.r,
                              backgroundImage: AssetImage(ImagesConstant.sandy),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.h),
                              child: Text(
                                "Sandy",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ColorConstant.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: ColorConstant.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Text(
                              "Posts",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 2.0.w,
                        height: 40.0.h,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: ColorConstant.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Text(
                              "Followers",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 2.0.w,
                        height: 40.0.h,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: ColorConstant.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                DefaultTabController(
                  length: 3,
                  child: TabBar(
                    labelColor: ColorConstant.white,
                    indicatorPadding: const EdgeInsets.all(7.0),
                    labelStyle: TextStyle(fontSize: 15.sp),
                    unselectedLabelStyle: TextStyle(fontSize: 15.sp),
                    unselectedLabelColor: ColorConstant.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(
                        text: "Post",
                      ),
                      Tab(
                        text: "Stamp Book",
                      ),
                      Tab(
                        text: "Community",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    children: [
                      Container(
                        height: 135.0.h,
                        width: 150.0.w,
                        child: Image(
                          image: AssetImage(ImagesConstant.snowy),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          height: 135.0.h,
                          width: 150.0.w,
                          child: Image(
                            image: AssetImage(ImagesConstant.sandy),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5.w,
      h - 35.h,
      w,
      h,
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
