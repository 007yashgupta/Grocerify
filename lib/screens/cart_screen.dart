import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../widgets/cart_item_cards.dart';


class CartScreen extends StatelessWidget {

  static const routeName = '/cart_screen';
  @override

  Widget build(BuildContext context) {

    final cartProductsProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
          ),
        ],
        
      ),
      body: SingleChildScrollView(
        child: Container(
           padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
                           Text('Cart',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,),
               SizedBox(
                height: 25,
               ),
        
              Container(
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(itemBuilder: (context, index) => Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border:   Border.all(color : Colors.black,width: 3),
                  ),
                  child: Card(
                    borderOnForeground: true,
                    
                    margin: EdgeInsets.all(0),
                    elevation: 5,
                    child: CartItemCards(
                      cartProductsProvider.cart[index],
                    
                    ),
                  ),
                ), itemCount: cartProductsProvider.cart.length,
              ),
              
                  ),
            ],
          ),
        ),
      ));
  }
}