
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'exam.dart';


class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {

  

final _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreen(){
      return[
        Exam(title: 'Home'),
        Exam(title: 'Settings'),
        Exam(title: 'Profile'),
        Exam(title: 'Favorites'),

      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems(){
      return[
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.home),
          inactiveColorPrimary:CupertinoColors.systemGrey,
           title: 'Home',
          activeColorPrimary: CupertinoColors.activeBlue,
          
        ),
         PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.settings),
           title: 'Settings',
          activeColorPrimary: CupertinoColors.activeOrange,
          inactiveColorPrimary:CupertinoColors.systemGrey
        ),
         PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
           title: 'Profile',
          activeColorPrimary: CupertinoColors.activeGreen,
          inactiveColorPrimary:CupertinoColors.systemGrey
        ),
         PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.heart),
          title: 'Favorites',
          activeColorPrimary: CupertinoColors.systemRed,
          inactiveColorPrimary:CupertinoColors.systemGrey
        ),
      ];
    }


  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context, screens: _buildScreen(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style1,
      controller:_controller    
      );
  }
}