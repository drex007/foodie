import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 5.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(color: Colors.white, 
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50.h,
                width: MediaQuery.of(context).size.width /2 - 40.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.home, color: Color(0xFFEF7532)),
                  Icon(Icons.person_outline, color: Color(0xFF676E79))

                  ],
                ),
              ),
              Container(
                height: 50.h,
                width: MediaQuery.of(context).size.width /2 - 40.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Icon(Icons.search, color: Color(0xFFEF7532)),
                  Icon(Icons.shopping_basket, color: Color(0xFF676E79))

                  ],
                ),
              )
           
            ],
          ),
      ),


    );
  }
}