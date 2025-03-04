import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motorcycle_service/view/shared/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 50.w,
                        height: 50.h,
                        color: greyBorder,
                      ),
                      SizedBox(width: 10.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good morning,', style: homeAppbarSmall,),
                          SizedBox(height: 3.h,),
                          Text('favian', style: homeAppbarBig,),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: (){},
                      child: Image.asset('assets/notif-none-ic.png', width: 40.w, height: 40.h,)),
                ],
              ),
              SizedBox(height: 30.h,),
              Container(
                width: 365.w,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: blueContainer,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Overall Distance', style: homeContainerLabel,),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('48.000', style: homeContainerValue,),
                                  Text(' km', style: homeContainerLabel,),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 80.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Fuel distance', style: homeContainerLabel,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('30', style: homeContainerValueSmall,),
                                  Text(' km', style: homeContainerLabel,),
                                ],
                              ),
                              SizedBox(height: 8.h,),
                              Text('Oil distance', style: homeContainerLabel,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('190', style: homeContainerValueSmall,),
                                  Text(' km', style: homeContainerLabel,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 17.w,),
                    Center(
                      child: SizedBox(
                        // width: 240.w,
                        // height: 50.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 100.w, vertical: 8.h),
                              backgroundColor: whiteButtonOnContainer,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(8.r))),
                          onPressed: () {
                            // _login();
                            // Navigator.pushNamed(context, '/home');
                            // print('Login Button clicked');
                          },
                          child: Text(
                            "View Details",
                            style: homeContainerButton,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h,),
              Center(
                child: SizedBox(
                  // width: 240.w,
                  // height: 50.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.w, vertical: 15.h),
                        backgroundColor: blueButton,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(15.r))),
                    onPressed: () {
                      // _login();
                      Navigator.pushNamed(context, '/home');
                      print('Login Button clicked');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 40.w),
                        Text(
                          "Add Distance",
                          style: authButtonText,
                        ),
                        Row(
                          children: [
                            Image.asset('assets/add-ic.png', width: 30.w, height: 30.h,),
                            SizedBox(width: 10.w,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Recent Distance', style: homeLabel,),
                  TextButton(
                      onPressed: (){
                        // Navigator.pushNamed(context, '/laporanAll');
                      },
                      child: Text('See all', style: homeLabelLink,))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
