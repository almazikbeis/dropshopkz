import 'package:flutter/material.dart';


import '../components/models/shoe.dart';
import '../components/shoe_tile.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25 ),
          decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(8)),
          child: Row(children: [Text('Search',style: TextStyle(color: Colors.grey),),
           Icon(Icons.search,
           color: Colors.grey,)],
          
          ),
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
        
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
children: const [
    Text('Hot offers🔥',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),),

Text('See all',
style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),

],
        ),
        
        
        ),

        const SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              Shoe  shoe = Shoe(name: 'Air Max plus', price: '120', imagePath: 'lib/images/1.png', description: '111');
      return ShoeTile(shoe: shoe,);

        })),
    const    Padding(
          padding:  EdgeInsets.only(top: 70.0,left: 25,right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )

      ],
    );
  }
}