import 'package:amazone_clone/features/admin/screens/add_product_screen.dart';
import 'package:amazone_clone/features/home/screens/category_deals_screen.dart';
import 'package:amazone_clone/features/home/screens/home_screen.dart';
import 'package:amazone_clone/common/widgets/bottom_bar.dart';
import 'package:amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings)
{
   switch (routeSettings.name) {
     case AuthScreen.routeName:
       return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
        );
        case HomePage.routeName:
       return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
        );
        case BottomBar.routeName:
       return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
        );
         case AddProductScreen.routeName:
       return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
        );
        case CategoryDealScreen.routeName:
        var category = routeSettings.arguments as String;
       return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealScreen(
          category: category,
        ),
        );
       default:
         return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist'),
          ),
        ),
        );
   }
}