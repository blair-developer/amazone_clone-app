import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/home/widgets/address_box.dart';
import 'package:amazone_clone/features/home/widgets/carousel_image.dart';
import 'package:amazone_clone/features/home/widgets/deal_of_day.dart';
import 'package:amazone_clone/features/home/widgets/top_category.dart';
import 'package:amazone_clone/provider/user_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
         child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: GlobalVariables.appBarGradient
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 42,
                    margin: EdgeInsets.only(left: 15),
                  child: Material(
                     borderRadius: BorderRadius.circular(7),
                     elevation: 1,
                     child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: Padding(padding: EdgeInsets.only(
                            left: 6
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 23,
                          ),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: Colors.black38,width: 1),
                        ),
                        hintText: 'Search Amazon IN',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        )
                      ),
                      
                     ),
                  ),
                              ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 42,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.mic, color: Colors.black, size: 25,),
                )
            
              ],
            ),
         ),
        
         ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            AddressBox(),
            SizedBox(height: 10,),
            TopCategory(),
            CarouselImage(),
            DealofDay()
          ],
        ),
      )
    ); 
  }
}