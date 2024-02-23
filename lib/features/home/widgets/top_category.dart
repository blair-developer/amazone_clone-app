import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/home/screens/category_deals_screen.dart';
import 'package:amazone_clone/features/home/widgets/carousel_image.dart';
import 'package:flutter/material.dart';

class TopCategory extends StatefulWidget {
  const TopCategory({super.key});

  @override
  State<TopCategory> createState() => _TopCategoryState();
}

class _TopCategoryState extends State<TopCategory> {
  void navigateToCategoryPage(BuildContext context, String category){
     Navigator.pushNamed(context, CategoryDealScreen.routeName, arguments: category);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 75,
        itemBuilder: (context, index){
           return GestureDetector(
            onTap: () => navigateToCategoryPage(
              context, GlobalVariables.categoryImages[index]['title']!),
             child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(GlobalVariables.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                      ),
                    ),
                    ),
                    Text(GlobalVariables.categoryImages[index]['title']!,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 0, 0, 0)
                    ),
                    ),
              ],
              ),
           );
        }
        ),
    );
    
  }
}