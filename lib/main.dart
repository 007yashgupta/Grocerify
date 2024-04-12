
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/category_specific_items_screen.dart';
import './models/category__specific_item.dart' as cp;
import './models/cart.dart';
import './screens/account_screen.dart';
import './screens/cart_screen.dart';
import './screens/item_info_screen.dart';
import './screens/tab_screen.dart';
import './screens/splash_screen.dart';
import './screens/categories_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
        ChangeNotifierProvider(create: (context) => cp.CategorySpecificItemProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),

        
        ],
      child: MaterialApp(
      
        title: 'My first figma app',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 37,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(45, 12, 87, 1),
            ),
          ),
          
       
        ),
        home : TabScreen(),
        routes:{
          MySplashScreen.routeName :(context) => MySplashScreen(),
          CategoriesScreen.routeName :(context)=> CategoriesScreen(),
          CategorySpecificItems.routeName :(context)=> CategorySpecificItems(),
          ItemInfoScreen.routeName :(context)=> ItemInfoScreen(),
          TabScreen.routeName :(context) => TabScreen(),
          CartScreen.routeName :(context) => CartScreen(),
          AccountScreen.routeName :(context) => AccountScreen(),
      
        },
      
      
      ),
    );
  }

  
}

