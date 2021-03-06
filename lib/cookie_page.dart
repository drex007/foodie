import 'package:car_app/cookie_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: [
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.only(right: 15.w),
            width: MediaQuery.of(context).size.width - 30.w,
            height: MediaQuery.of(context).size.height - 50.h,
            child: GridView.count(crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.h,
            mainAxisSpacing: 15.w,
            childAspectRatio: 0.8,
            children: [
                _buildCard('Cookie mint', '\$3.99', 'assets/cookiemint.jpg',
                      false, false, context),
                  _buildCard('Cookie cream', '\$5.99', 'assets/cookiecream.jpg',
                      true, false, context),
                  _buildCard('Cookie classic', '\$1.99',
                      'assets/cookieclassic.jpg', false, true, context),
                  _buildCard('Cookie choco', '\$2.99', 'assets/cookiechoco.jpg',
                      false, false, context),
                      

            ],

            ),


          )
        ],
      ),
      
    );
    
  }
  Widget _buildCard(String name, String price, String imgPath, bool added, bool isFavorite, context){
    return Padding(padding: EdgeInsets.only(top:5.h,left: 5.w, right: 5.w, bottom: 5.h),
    child: InkWell(
      onTap: (){
        Get.to(()=>CookieDetail(assetPath: imgPath, cookiePrice: price,cookieName:name));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
              
            )
          ],
        ),
        // Content Column
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(5.0),
            // isFavoriteRow 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isFavorite ? Icon(Icons.favorite, color: Color(0xFFEF7532)):Icon(Icons.favorite_border, color: Color(0xFFEF7532)),
              ],
            ),
            ),
            Hero(tag: imgPath,
                 child: Container(
                   height: 75.h,
                   width: 75.h,
                   decoration: BoxDecoration(
                     image:DecorationImage(image: AssetImage(imgPath), fit: BoxFit.contain),
                   ),
                 )
                ),
            SizedBox(height:7.h),
              Text(price, style: TextStyle(
                color: Color(0xFFCC8053), fontFamily: 'Varela', fontSize: 14.sp)),
              Text(name,style: TextStyle( color: Color(0xFF575E67),fontFamily: 'Varela',fontSize: 14.0.sp)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.h)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: Color(0xFFD17E50), size: 12.sp),
                              Text('Add to cart',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFFD17E50),
                                      fontSize: 12.sp))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.sp),
                              Text('3',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFFD17E50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp)),
                              Icon(Icons.add_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.sp),
                            ]
                        ],
                      ),)

              
          
          ],
        ),
      ),
    ),
    );
  }
}