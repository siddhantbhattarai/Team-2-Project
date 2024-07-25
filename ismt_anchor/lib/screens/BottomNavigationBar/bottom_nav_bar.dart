
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/constant/color.dart';
import 'package:ismt_anchor/screens/AddNews/add_news.dart';
import 'package:ismt_anchor/screens/Home/view/home_screen.dart';
import 'package:ismt_anchor/screens/News/view/news_screen.dart';
import 'package:ismt_anchor/screens/Profile/view/profile_screen.dart';
import 'package:ismt_anchor/screens/Tutorial/view/tutorial_screen.dart';

import '../StudentPost/view/student_post.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
 
  
  List<Widget> children=[
   HomeScreen(),
   NewsScreen(),
   CreateNews(),
   TutorialScreen(),
   ProfileScreen(),


  ];
   int _page = 0;

  
   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: primaryColor,
          color: primaryColor,
          items: const[
            Icon(Icons.home_outlined, size: 30,color: Colors.white,),
            Icon(Icons.photo_size_select_actual_outlined, size: 30,color: Colors.white,),
            Icon(Icons.add, size: 30,color: Colors.white,),
            Icon(Icons.portrait_sharp, size: 30,color: Colors.white,),
            Icon(Icons.person_outline, size: 30,color: Colors.white,),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: children[_page]);
  }
  
}
