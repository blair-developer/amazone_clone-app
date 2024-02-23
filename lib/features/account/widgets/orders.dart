import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  //temporary list
  List list = [
    {
      'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?cs=srgb&dl=pexels-ella-olsson-1640772.jpg&fm=jpg'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              child: const Text('Your Orders', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),),
            ),
             Container(
              padding: EdgeInsets.only(right: 15),
              child:  Text('See All',
               style: TextStyle(
                color: GlobalVariables.selectedNavBarColor, 
              ),),
            ),

            //display orders
            Expanded(
         child: Container(
             height: 170,
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 20,
                  right: 0,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index){
                      return SingleProduct(image: list[index],
                      );
                  }
                  ),
          )
            )
            
          ],
        )
      ],
    );
  }
}