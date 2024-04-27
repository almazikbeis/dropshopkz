import 'package:flutter/material.dart';
import 'package:tshopkz/components/models/shoe.dart'; // Убедитесь, что путь к файлу корректен

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath, fit: BoxFit.cover),
          ),
       
        Padding(
          padding: const EdgeInsets.only(left: 30.0,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(shoe.name,
              style:  const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
            const   SizedBox(height: 5,),
          
              Text(shoe.price+"\$",
              style: const TextStyle(
                color: Colors.grey,
              ),)
              ],
          
          
          
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              )),
              child: Icon(
  Icons.arrow_forward,
  color: Colors.white, // Цвет иконки
   // Размер иконки
)
)
            ],
          ),
        )


        ]
      ),
    );
  }
}
