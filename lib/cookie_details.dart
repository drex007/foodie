import 'package:car_app/cookie_page.dart';
import 'package:car_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookiePrice, cookieName;
  CookieDetail({ this.assetPath, this.cookiePrice, this.cookieName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0.0 ,
        centerTitle: true,
        leading: IconButton(onPressed: (){Get.to(()=>MyHomePage());}, icon:Icon(Icons.arrow_back_ios), color: Color(0xFF545D68),),
        title: Text("Pick Up", style: TextStyle(fontWeight:FontWeight.w700, fontSize: 20.sp, color:Color(0xFF545D68))),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications_none), color: Color(0xFF545D68),),],
       ),
       body: ListView(
         children: [
           SizedBox(height: 15.h),
           Padding(padding: EdgeInsets.only(left: 20.w),
           child: Text(
              'Cookie',
              style: TextStyle(fontFamily: 'Varela', fontSize: 42.sp, fontWeight: FontWeight.bold, color: Color(0xFFF17532))
            ),
            
          ),
          SizedBox(height: 15.h),
            Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 150.h,
              width: 100.w,
              fit: BoxFit.contain
              )
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(cookiePrice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            SizedBox(height: 10.sp),
            Center(
              child: Text(cookieName,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.sp)),
            ),
            
            SizedBox(height: 20.h),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.sp,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFF17532)
                ),
                child: Center(
                  child: Text('Add to cart',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
           

         ],
       ) ,
    floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Color(0xFFF17532),child: Icon(Icons.fastfood),),
    floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
    bottomNavigationBar:BottomBar() ,

      
    );
  }
}