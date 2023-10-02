import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200.0,
              decoration: new BoxDecoration(
                color: Colors.red,
                //   borderRadius: BorderRadius.vertical(
                //       bottom: Radius.elliptical(
                //           MediaQuery.of(context).size.width, 50.0)),
              ),
            ),
            Container(
              height: 200.0,
              decoration: new BoxDecoration(
                color: Colors.black,
                //   borderRadius: BorderRadius.vertical(
                //       bottom: Radius.elliptical(
                //           MediaQuery.of(context).size.width, 50.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
