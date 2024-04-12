import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../models/cart.dart';




class CartItemCards extends StatelessWidget {

  final CartItem cartItem;
  CartItemCards(this.cartItem);

  @override

   Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 100,
            width: double.infinity,
            child: Image.asset(cartItem.item.imagePath,fit: BoxFit.cover,),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FittedBox(fit: BoxFit.fitHeight,child: Text(cartItem.item.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color:  Theme.of(context).textTheme.titleLarge!.color),)),
              FittedBox(child: Text('X'+cartItem.quantity.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:  Theme.of(context).textTheme.titleLarge!.color),)),
              FittedBox(child: Text((cartItem.quantity * cartItem.item.price).toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color:  Theme.of(context).textTheme.titleLarge!.color),)),
          
            ],
          ),
        ),
      ],
    
    );
  }


}