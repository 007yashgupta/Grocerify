import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/category__specific_item.dart';

class ItemInfoScreen extends StatelessWidget {

  static const routeName = '/item_info_screen';

  @override

  Widget build(BuildContext context) {
    final appBar = AppBar();
    final mediaQuery = MediaQuery.of(context);
    final requiredProduct = ModalRoute.of(context)!.settings.arguments as List;
    final cardItem =requiredProduct[0] as CategorySpecificItem;
    print(cardItem.id);
    print(cardItem.title);
    final title = requiredProduct[1] as String;

    return Scaffold(

      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                height: (mediaQuery.size.height-appBar.preferredSize.height) * 0.32,
                width: double.infinity,
           
                child: ClipRRect(
                  // borderRadius: BorderRadius.only(bottomRight: Radius.circular(35), bottomLeft: Radius.circular(35),topLeft: Radius.zero,topRight: Radius.zero),
                  child: Image.asset(
                    cardItem.imagePath,
                    fit: BoxFit.fill,
                    
                          
                  ),
                ),
          
              ),
              Container(
          
                  // height: (mediaQuery.size.height-appBar.preferredSize.height) * 0.68,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                    
                  ),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     
                      Text(
                        cardItem.title , style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                        
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text(
                         '₹', style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                          
                      //      Text(
                      //   cardItem.price.toString() , style: TextStyle(
                      //     fontSize: 22,
                      //     fontWeight: FontWeight.bold,
                      //     color: Color.fromRGBO(45, 12, 87, 1),
                      //   ),
                      // ),
                       Text(
                        cardItem.price.toString() , style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                      ),
                        SizedBox(
                        width: 3,
                      ),
                      Text(
                        '/ kg' , style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                      ),
          
                        ],
          
                      ),
                      SizedBox(height: 35,),
          
                      Text(cardItem.description.heading,style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),),
          
                        SizedBox(height: 10,),
                        Text(
                          cardItem.description.story,
                          softWrap: true,
                         style : TextStyle(
                          fontSize: 17,
                          
                          color: Color.fromRGBO(149, 134, 168, 1),
                        ),
                        ),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: ElevatedButton( onPressed: (){}, child: Container(decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.zero,
                            shape: BoxShape.rectangle,
                            
                          ),child: Icon(Icons.favorite_border),alignment: Alignment.center,),),
                        ),
                        SizedBox(width: 8,),
                         Container(
                          
                          height: 70,
                          width: 70,
                          
                           child: ElevatedButton(style: ButtonStyle(
                            
                            iconColor: MaterialStatePropertyAll(Colors.green),
                                                 ),onPressed: (){
                                                  Provider.of<CartProvider>(context,listen: false).addProduct(title, cardItem.id);
                                                  
                                                 }, child: Container(decoration: BoxDecoration(
                            
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.zero,
                            
                                                 ),child: Icon(Icons.shopping_cart,),alignment: Alignment.center,),),
                         ),
                
                
                      
                
                      
                      ],
                
                    ),
                
          
                      ],
                      
                    
          
          
                    ),
                  ],
                ),
                
              ),
          
            ],
          ),
        ),
          
      ),


    );



  }




}