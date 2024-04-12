import 'package:flutter/material.dart';
import '../screens/item_info_screen.dart';
import '../models/category__specific_item.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';




class CategorySpecificItemCard extends StatefulWidget {

  final CategorySpecificItem cardItem;
  final String title;

  CategorySpecificItemCard(this.cardItem,this.title);

  @override
  State<CategorySpecificItemCard> createState() => _CategorySpecificItemCardState();
}

class _CategorySpecificItemCardState extends State<CategorySpecificItemCard> {
  @override


  Widget build(BuildContext context) {

    
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
          ItemInfoScreen.routeName , arguments: [
            widget.cardItem , widget.title
          ]
        );
        print(widget.cardItem.id);
        
      },
      
      child: Container(
       
        width: double.infinity,
        
          child:Row(
            children: [
              Container(
                child: Image.asset(widget.cardItem.imagePath,fit: BoxFit.cover,),
              ),
              SizedBox(
                width : 20
              ),
              Container(
                alignment: Alignment.topRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text(widget.cardItem.title,softWrap: true,style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(45, 12, 87, 1),
                    fontWeight: FontWeight.bold
                  ),),
                  Row(
                    children: [
                      Text('₹'+widget.cardItem.price.toString() ,style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(45, 12, 87, 1),
                        
                      ),),
                      Text(
                        '/kg', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color:Color.fromRGBO(149, 134, 168, 1),
                        
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      ElevatedButton( onPressed: (){
                        setState(() {
                          Provider.of<CategorySpecificItem>(context,listen: false).toggleFavouriteStatus();
                          
                        });
                        
                        
                      }, child: Container(decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(2),
                        
                      ),child: widget.cardItem.isFavourite ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),alignment: Alignment.center,),),
                      SizedBox(width: 8,),
                       ElevatedButton(style: ButtonStyle(
                        iconColor: MaterialStatePropertyAll(Colors.green),
                      ),onPressed: (){
                        Provider.of<CartProvider>(context,listen: false).addProduct(widget.title, widget.cardItem.id);

                      }, child: Container(decoration: BoxDecoration(
                        
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        
                      ),child: Icon(Icons.shopping_cart),alignment: Alignment.center,),),
      
      
                    
      
                    
                    ],
      
                  ),
      
      
                          ],),
              ),
        
            ],
          ),
        
      ),
    );
  }
}