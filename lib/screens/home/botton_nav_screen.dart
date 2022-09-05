import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/majesticons.dart';
import 'package:plugs_app/constants/colors.dart';
import 'package:plugs_app/screens/auth/signup.dart';
import 'package:plugs_app/screens/home/chat_screen.dart';
import 'package:plugs_app/screens/home/home_screen.dart';
import 'package:plugs_app/screens/home/plugs_screen.dart';
import 'package:plugs_app/screens/home/search_screen.dart';
import 'package:plugs_app/screens/settings/profile_screen.dart';
import 'package:plugs_app/utils/ui.dart';
import 'package:plugs_app/widgets/drawer_tile.dart';

import '../open_chat.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  // Create a key
  int currentScreenIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    PlugsScreen(),
    SearchScreen(),
    ChatScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: Container(
        height: 80.h,
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.r),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentScreenIndex = index;
              });
            },
            elevation: 0,
            iconSize: 30.sp,
            backgroundColor: primaryLightBgColor,
            // fixedColor: primaryLightBgColor,
            showSelectedLabels: false,
            selectedItemColor: primaryLighterBgColor,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Iconify(
                    Majesticons.home,
                    color: currentScreenIndex == 0
                        ? primaryColor
                        : primaryIconColor,
                    size: 30.sp,
                  )),
              BottomNavigationBarItem(
                  label: "Users",
                  icon: Iconify(
                    Majesticons.users,
                    color: currentScreenIndex == 1
                        ? primaryColor
                        : primaryIconColor,
                    size: 30.sp,
                  )),
              BottomNavigationBarItem(
                  label: "Search",
                  icon: Iconify(
                    Majesticons.search,
                    color: currentScreenIndex == 2
                        ? primaryColor
                        : primaryIconColor,
                    size: 30.sp,
                  )),
              BottomNavigationBarItem(
                  label: "Chats",
                  icon: Iconify(
                    Majesticons.chat,
                    color: currentScreenIndex == 3
                        ? primaryColor
                        : primaryIconColor,
                    size: 30.sp,
                  ))
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: primaryLighterBgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DrawerHeader(

                  decoration: BoxDecoration(
                    color: primaryColor,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
                      ),
                      addHorizontalSpace(10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Plugs App",
                            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                          ),
                          addHorizontalSpace(5.h),
                          Text(
                            "Welcome ${faker.person.name()}",
                            style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                DrawerTile(title:'Profile', icon: Icons.person_outlined, onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));}),
                DrawerTile(title:'Settings', icon: Icons.settings_outlined),
                DrawerTile(title:'Notifications', icon: Icons.notifications_outlined),
                DrawerTile(title:'Contact Us', icon: Icons.phone_outlined),
                DrawerTile(title:'Help', icon: Icons.help_outlined),

              ],
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                    (route) => false);
              },
              leading: Icon(Icons.exit_to_app, color: Colors.white),
            )
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100.h,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Colors.transparent,
        leadingWidth: 80.w,
        titleSpacing: 0,
        // actions: [
        //   //Display add button only if user is in the chats screen
        //   if (currentScreenIndex == 3)
        //     FloatingActionButton(
        //       elevation: 0,
        //       onPressed: () {
        //         Navigator.of(context)
        //             .push(MaterialPageRoute(builder: (context) => OpenChat()));
        //       },
        //       child: Icon(Icons.add, size: 30.sp),
        //     ),
        //   addHorizontalSpace(20.w)
        // ],
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: ClipOval(
              child: Ink(
                child: CircleAvatar(
                  child: Icon(
                    Icons.menu,
                  ),
                  // backgroundImage: NetworkImage(
                  //     "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
                ),
              ),
            ),
          ),
        ),
      ),
      body: _screens[currentScreenIndex],
    );
  }
}
