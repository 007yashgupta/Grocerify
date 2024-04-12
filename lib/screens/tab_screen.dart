import 'package:first_figma/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/account_screen.dart';




class TabScreen extends StatefulWidget {
  static const routeName = '/tab_screen';


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

 int currentPageIndex =0;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
         child: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.grid_view_rounded,color: Color.fromRGBO(45, 12, 87, 1),), label: 'Home'
         
             ),
              NavigationDestination(icon: Icon(Icons.shopping_cart,color: Color.fromRGBO(45, 12, 87, 1),), label: 'Cart'),
               NavigationDestination(icon: Icon(Icons.supervised_user_circle_sharp,color: Color.fromRGBO(45, 12, 87, 1) ,), label: 'Account')
             ],
             selectedIndex: currentPageIndex,
             onDestinationSelected: (index){
               setState(() {
          currentPageIndex = index;
          
               });
               
         
             },
             backgroundColor: Colors.white,),
       ),
    body: [
      CategoriesScreen(),
      CartScreen(),
      AccountScreen(),
      




    ][currentPageIndex],
      
    );
  }
}
