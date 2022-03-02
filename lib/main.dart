import 'package:car_app/bottom_bar.dart';
import 'package:car_app/cookie_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
    return ScreenUtilInit(
      designSize: Size(340,690),
      builder:() => 
         GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{


  @override
  void initState() {
    super.initState();
   
  }
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        elevation: 0.0 ,
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios), color: Color(0xFF545D68),),
        title: Text("Pick Up", style: TextStyle(fontWeight:FontWeight.w700, fontSize: 20, color:Color(0xFF545D68))),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications_none), color: Color(0xFF545D68),),],
 ),
    body: ListView(
      padding: EdgeInsets.only(left:20.h),
      children: [
        SizedBox(height: 15.0.h),
        Text("Categories",
        style: TextStyle(fontSize: 40, fontFamily: 'Valera', fontWeight: FontWeight.bold)),
        SizedBox(height: 15.h,),
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: Color(0xFFC88D67),
          labelPadding: EdgeInsets.only(right: 45.h),
          isScrollable: true,
          unselectedLabelColor: Color(0xFFCDCDCD),
          tabs: [
            Tab(
                  child: Text('Cookies',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
           Tab(
                  child: Text('Cookie cake',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
          Tab(
                  child: Text('Ice cream',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )

          ]),
          Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    CookiePage(),
                    CookiePage(),
                    CookiePage(),
                  ]
                )
              )



        
      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Color(0xFFF17532),child: Icon(Icons.fastfood),),
    floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
    bottomNavigationBar:BottomBar() ,
    );
  }
}
