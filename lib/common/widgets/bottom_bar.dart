import 'package:amazone_clone/features/home/screens/home_screen.dart';
import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/account/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges ;

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottombarWidth = 42;
  double bottombarBorderwidth = 5;
  List<Widget> pages = [
    const HomePage(),
    const AccountScreen(),
    const Center(child: Text('Cart page'),)
  ];
  void updatePage(int page){
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: _page,
         selectedItemColor: GlobalVariables.selectedNavBarColor,
         backgroundColor: GlobalVariables.backgroundColor,
         iconSize: 28,
         onTap: updatePage,
         items: [
          BottomNavigationBarItem(icon: Container(
            width:  bottombarWidth,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                color: _page == 0? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
                width: bottombarBorderwidth,
              ))
            ),
            child: const Icon(Icons.home_outlined),
          ),
          label: '',
          ),
          BottomNavigationBarItem(icon: Container(
            width:  bottombarWidth,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                color: _page == 1? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
                width: bottombarBorderwidth,
              ))
            ),
            child: const Icon(Icons.person_outlined),
          ),
          label: '',
          ),
          BottomNavigationBarItem(icon: Container(
            width:  bottombarWidth,
            decoration: BoxDecoration(
              border: Border(top: BorderSide(
                color: _page == 2? GlobalVariables.selectedNavBarColor : GlobalVariables.backgroundColor,
                width: bottombarBorderwidth,
              ))
            ),
            child: const badges.Badge(
              badgeContent: Text('2'),
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.white
              ),
              child: Icon(Icons.shopping_cart_outlined)
              ),
          ),
          label: '',
          )
         ],
        ),
        
    );
  }
}