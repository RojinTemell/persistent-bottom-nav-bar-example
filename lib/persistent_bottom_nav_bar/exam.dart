import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'exam2.dart';


// ignore: must_be_immutable
class Exam extends StatelessWidget {
   Exam({Key? key,required this.title}):super(key: key);
  final String title;
 
  
  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(onPressed: (){
      
    PersistentNavBarNavigator.pushNewScreen(
            context,
            screen:NewPage(),
            withNavBar: true,
            pageTransitionAnimation: PageTransitionAnimation.cupertino,
          );
          
    }, child: Text(title) )
   );
    
  }
}