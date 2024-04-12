import 'package:flutter/material.dart';
import '../models/category__specific_item.dart';


class CartItem {

  final CategorySpecificItem item;
  int quantity = 0;

  CartItem(this.item,this.quantity);


}



class CartProvider with ChangeNotifier {

  List<CartItem> _cart = [];

  List<CartItem> get cart {
    return [..._cart];
  }

 

  void addProduct(String key,String itemId) {

    final mapItems = CategorySpecificItemProvider().mapItems;

    final List<CategorySpecificItem> listItems = mapItems[key];
    final List<CategorySpecificItem> listItems1 = mapItems['Vegetables'];
    final List<CategorySpecificItem> listItems2 = mapItems['Breads'];
    final List<CategorySpecificItem> listItems3 = mapItems['Sweets'];
    final List<CategorySpecificItem> listItems4 = mapItems['Fruits'];
    print(key);
    print(itemId);
    print(listItems[0].id);
    print(listItems[0].title);
    print(listItems[1].id);
    print(listItems[1].title);
    print(listItems[2].id);
    print(listItems[2].title);
    print(listItems[3].id);
    print(listItems[3].title);

    print(listItems1[0].id);   
    print(listItems1[0].title);
    print(listItems1[1].id);
    print(listItems1[1].title);
    print(listItems1[2].id);
    print(listItems1[2].title);
    print(listItems1[3].id);
    print(listItems1[3].title);


    
    print(listItems2[0].id);
    print(listItems2[0].title);
    print(listItems2[1].id);
    print(listItems2[1].title);
    print(listItems2[2].id);
    print(listItems2[2].title);
    print(listItems2[3].id);
    print(listItems2[3].title);

    
    print(listItems3[0].id);
    print(listItems3[1].id);
    print(listItems3[2].id);
    print(listItems3[3].id);

    
    print(listItems4[0].id);
    print(listItems4[1].id);
    print(listItems4[2].id);
    print(listItems4[3].id);












    final int desiredItemIndex = listItems.indexWhere((element) => element.id == itemId);
    print(desiredItemIndex);
    final desiredItem = listItems[desiredItemIndex];

    final itemAdded = CartItem(desiredItem, 1);

    if(_cart.isEmpty) {
      _cart.add(itemAdded);
      print(itemAdded.item.title);
      print(_cart);
      notifyListeners();
    }

    else {
     if (_cart.any((element) => element.item.id == itemAdded.item.id)) {
      int index = _cart.indexWhere((element) => element.item.id == itemAdded.item.id);
      CartItem item1= _cart[index];
      item1.quantity=item1.quantity +1;
      _cart[index]= item1;
       print(_cart);
       print(item1);
      notifyListeners();

     
      

      
  
}
     
     else {

      _cart.add(itemAdded);
      print(itemAdded);
      notifyListeners();
        
      }

      


      }
      
    }

    

    

   


  }



