import 'package:the_plug/screens/home/homepage.dart';
import 'package:the_plug/screens/map_overview/map_overview.dart';
import 'package:the_plug/screens/messaging/messages_screen.dart';
import 'package:the_plug/screens/post_service/post_service.dart';

import 'package:the_plug/screens/settings_screen/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MyNav extends StatefulWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  PersistentTabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,

      // backgroundColor: const Color(0xffeaf1f8), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
      navBarHeight: 48,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const Homepage(),
    const MapOverviewScreen(),
    const PostServiceScreen(),
    const MessagingScreen(),
    const SettingsScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.home,
        size: 20,
      ),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeOrange,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.location_north,
        size: 20,
      ),
      title: ("Discover"),
      activeColorPrimary: CupertinoColors.activeOrange,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.add,
        size: 20,
      ),
      title: ("Post"),
      activeColorPrimary: CupertinoColors.activeOrange,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.text_bubble,
        size: 20,
      ),
      title: ("Messages"),
      activeColorPrimary: CupertinoColors.activeOrange,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        CupertinoIcons.settings,
        size: 20,
      ),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.activeOrange,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
