import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:newdummybitesbee/getx/detailspage/second_page.dart';
import 'package:newdummybitesbee/getx/home/home_page_binding/homepage_binding.dart';
import 'package:newdummybitesbee/getx/home/page/get_home.dart';
import 'package:newdummybitesbee/reusewidget/createaccount.dart';
import 'package:newdummybitesbee/streamexample/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812,),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
        ),
        // home:const GetXHomePage(),initialBinding: HomePageBinding(),
        home: const GetXHomePage(),initialBinding: HomePageBinding(),
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(375, 812,),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter_ScreenUtil',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
        ),
        // home:const GetXHomePage(),initialBinding: HomePageBinding(),
        home: const CreateAccount(),
      ),
    );
  }
}
