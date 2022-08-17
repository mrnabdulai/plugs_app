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
import 'package:plugs_app/utils/ui.dart';

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
            fixedColor: primaryLightBgColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: "Home",
                  icon: Iconify(
                    Majesticons.home,
                    color: primaryIconColor,
                    size: 30.sp,
                  )),
              BottomNavigationBarItem(
                  label: "Users",
                  icon: Iconify(
                    Majesticons.users,
                    color: primaryIconColor,
                    size: 30.sp,
                  )),
              BottomNavigationBarItem(
                  label: "Search",
                  icon: Iconify(
                    Majesticons.search,
                    color: primaryIconColor,
                    size: 30.sp,
                  )),
              BottomNavigationBarItem(
                  label: "Chats",
                  icon: Iconify(
                    Majesticons.chat,
                    color: primaryIconColor,
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
                  child: Text(
                    "Plugs App",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                ListTile(
                  title: Text("Profile"),
                ),
                ListTile(
                  title: Text("Settings"),
                ),
                ListTile(
                  title: Text("Notifications"),
                ),
                ListTile(
                  title: Text("Contact Us"),
                ),
                ListTile(
                  title: Text("Help"),
                ),
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
        actions: [
          //Display add button only if user is in the chats screen
          if(currentScreenIndex == 3)
          FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            child: Icon(Icons.add, size: 30.sp),
          ),
          addHorizontalSpace(20.w)
        ],
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
                    Icons.person_outline,
                  ),
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
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
