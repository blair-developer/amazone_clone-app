import 'package:flutter/material.dart';

class DealofDay extends StatefulWidget {
  const DealofDay({super.key});

  @override
  State<DealofDay> createState() => _DealofDayState();
}

class _DealofDayState extends State<DealofDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10, top: 15),
            child: const Text(
              'Deal of the day',
               style: TextStyle(fontSize: 20),
           ),
          ),
          Image.network('https://t4.ftcdn.net/jpg/00/69/42/49/360_F_69424905_vxTpRGAcVKni9157VpKAOG6MpTX30etl.jpg',
          height: 235,
          fit: BoxFit.fitHeight,
          ),
           Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: const Text(
                        '\$100',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
           Container(
             alignment: Alignment.topLeft,
             padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
             child: Text('tonny', maxLines: 2, overflow: TextOverflow.ellipsis,),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',fit: BoxFit.fitWidth,width: 100,height: 100,),
                Image.network('https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',fit: BoxFit.fitWidth,width: 100,height: 100,),
                Image.network('https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',fit: BoxFit.fitWidth,width: 100,height: 100,),
                Image.network('https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',fit: BoxFit.fitWidth,width: 100,height: 100,)
              ],
            ),
          ),
          Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ).copyWith(left: 15),
                  alignment: Alignment.topLeft,
                  child: Text(
                        'See all deals',
                        style: TextStyle(
                          color: Colors.cyan[800],
                        ),
                      ),
                    ),
      ],
    );
  }
}