import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/chatting/ChattingScreen.dart';
import 'package:flutter_carrot_market_ui/screens/home/home_screen.dart';
import 'package:flutter_carrot_market_ui/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter_carrot_market_ui/screens/near_me/near_me_screen.dart';
import 'package:flutter_carrot_market_ui/screens/neighborhood_life/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  @override
  _MainScreensState createState() => _MainScreensState();

}

class _MainScreensState extends State<MainScreens> {
  // index값 선언
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //Scaffold 틀 리턴
    return Scaffold(
      // body
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),



        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: '홈',
              icon: Icon(
                CupertinoIcons.chat_bubble,
              ),
          ),
          BottomNavigationBarItem(
              label: '채팅',
              icon: Icon(
                CupertinoIcons.chat_bubble,
              ),
          )
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),





    );

  }

}

