import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/admin/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges ;

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  int _page = 0;
  double bottombarWidth = 42;
  double bottombarBorderwidth = 5;
  List<Widget> pages = [
    const PostScreen(),
    const Center(child: Text('Analytics page')),
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
         appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
         child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: GlobalVariables.appBarGradient
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                alignment: Alignment.topLeft,
                child: Image.asset('assets/images/app.png',
                width: 120,
                height: 45,
                //color: Colors.black,
                ),
              ),
             const Text(
              'Admin',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
             )
              ],
            ),
         ),
         ),
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
            child: const Icon(Icons.analytics_outlined),
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
            child: const Icon(Icons.all_inbox_outlined),
          ),
          label: '',
          ),
         ],
        ),
    );
  }
}