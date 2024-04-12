import 'package:flutter/material.dart';
import '../screens/category_specific_items_screen.dart';




class CategoryItem extends StatelessWidget {

  final String title;
  final String imagePath;
  final int count;





  

  CategoryItem({
    required this.title,
    required this.imagePath,
    required this.count,
  });

  @override

  Widget build(BuildContext context) {
    return FittedBox(

      child: InkWell(
        splashColor: Colors.purpleAccent,
        onTap: () {
          Navigator.of(context).pushNamed(
            CategorySpecificItems.routeName , arguments: title 

          );
          
        },
        child: Card(
          elevation: 5,
          child: Column(
            
            children: [
              
               
                    Container(
                    child: Image.asset(imagePath, fit:BoxFit.cover),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      
                  
                      )
                    ),
                  
                  Column(
                                     children: [
                                       Text(title,style: TextStyle(
                                         fontSize: 17,
                                         fontWeight: FontWeight.bold
                                       ),),
                                       Text(count.toString(),
                                       style:  TextStyle(
                                         fontSize: 13,
                                       ),),
                                     ],
                     ),
                   
                  ]
                
              
             
              
          
          ),
        ),
      ),
    );
  }

  



}

