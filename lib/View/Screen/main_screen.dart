

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../constant.dart';
import 'Home_Screen/Home_Screen.dart';
import 'Message_Screen/Message_Screen.dart';
import 'Schedule_Screen/Schedule_Screen.dart';
import 'Settings_screen/Settings_Screen.dart';

class MainScreen extends StatelessWidget {
   MainScreen({Key? key}) : super(key: key);
  final PersistentTabController _controller= PersistentTabController(initialIndex: 0);
   List<Widget> _buildScreens() {
     return [
       HomeScreen(),
       MessageScreen(),
       ScheduleScreen(),
       SettingsScreen(),

     ];
   }
   List<PersistentBottomNavBarItem> _navBarsItems() {
     return [
       PersistentBottomNavBarItem(
         icon: const Icon(CupertinoIcons.home),
         title: ("Home"),
         activeColorPrimary: kPrimaryColors,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.message),
         title: ("Message"),
         activeColorPrimary: kPrimaryColors,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(CupertinoIcons.calendar),
         title: ("Schedule"),
         activeColorPrimary: kPrimaryColors,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),
       PersistentBottomNavBarItem(
         icon: const Icon(Icons.settings),
         title: ("Settings"),
         activeColorPrimary: kPrimaryColors,
         inactiveColorPrimary: CupertinoColors.systemGrey,
       ),

     ];
   }


   @override
  Widget build(BuildContext context) {
     FlutterStatusbarcolor.setStatusBarColor(kColorsWhite);
    return Scaffold(
      backgroundColor: kColorsWhite,
      body: SafeArea(
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration:  NavBarDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            colorBehindNavBar: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 30,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
        ) ,
      ),

    );
  }
}
