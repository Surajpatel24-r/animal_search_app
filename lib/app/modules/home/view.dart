import 'package:animal_search_app/app/modules/home/controller.dart';
import 'package:animal_search_app/app/modules/profile/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/values/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 237, 237, 237),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18.r,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(() => ProfileScreen());
              },
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 237, 237, 237),
                ),
                child: Icon(
                  Icons.person_2_outlined,
                  size: 19.r,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: TextFormField(
                // controller: _controller.searchController,
                onChanged: (value) {
                  // _controller.filterSearch(value);
                },
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.grey),
                  focusColor: Colors.black,
                  contentPadding: EdgeInsets.only(right: 40.w, left: 12.w),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  labelText: "Search Videos...",
                  counterStyle: Theme.of(context).textTheme.bodyLarge,
                  helperStyle: Theme.of(context).textTheme.bodyLarge,
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.tune_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
