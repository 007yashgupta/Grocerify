
import 'package:flutter/material.dart';
// import 'package:uuid/uuid.dart';

class ItemStory {
  final String story;
  final String heading;

  ItemStory(
    this.heading,
    this.story

  );
}

class CategorySpecificItem with ChangeNotifier{

  final String title;
  final ItemStory description;
  final String imagePath;
  final double price;
  final String id;
  bool isFavourite = false;


  CategorySpecificItem({
    required this.id,required this.title,required this.price,required this.imagePath,required this.description
  });

  void toggleFavouriteStatus() {

    isFavourite = !isFavourite;
    notifyListeners();


  }



}

class CategorySpecificItemProvider  with ChangeNotifier{

  

  Map<String,dynamic> _mapItems={
    'Vegetables':[
      CategorySpecificItem(id: '1', title: 'Cabbage',description:  ItemStory(
        'Kashmir',
        'Purple cauliflower is a variation of traditional white cauliflower with vibrant purple hues. It adds a pop of color and nutrition to dishes.'), price: 250 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
      CategorySpecificItem(id: '2', description: ItemStory(
        'Kerala',
        'Savoy cabbage, also known simply as savoy or curly cabbage, is a variety of cabbage with crinkled leaves. It has a milder flavor compared to other types of cabbage.'),title: 'Purple Cauliflower', price: 300 ,imagePath: 'assets/images/categorySpecificItems/purpleCauliflower.png' ),
      CategorySpecificItem(id: '3', title: 'Savoy Cabbage',description: ItemStory(
        'Kerala',
        'Savoy cabbage, also known simply as savoy or curly cabbage, is a variety of cabbage with crinkled leaves. It has a milder flavor compared to other types of cabbage.'), price: 600 ,imagePath: 'assets/images/categorySpecificItems/savoyCabbage.png' ),
      CategorySpecificItem(id: '4',description: ItemStory(
        'Kerala',
        'Savoy cabbage, also known simply as savoy or curly cabbage, is a variety of cabbage with crinkled leaves. It has a milder flavor compared to other types of cabbage.'), title: 'Cabbage1', price: 380 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),

    ],
    'Fruits':[
      CategorySpecificItem(id: '5',description: ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), title: 'Bannana', price: 621 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
      CategorySpecificItem(id: '6', title: 'Apple',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 378 ,imagePath: 'assets/images/categorySpecificItems/purpleCauliflower.png' ),
      CategorySpecificItem(id:'7', title: 'Orange',description:  ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 987 ,imagePath: 'assets/images/categorySpecificItems/savoyCabbage.png' ),
      CategorySpecificItem(id: '8', title: 'Grapes',description:  ItemStory(
        'Amritsar',
        'Kajukatli, also known as kaju barfi, is a traditional Indian sweet made from cashew nuts, sugar, and ghee. It has a rich, creamy texture and a sweet flavor.'), price: 276 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
    ],
    'Breads':[
      CategorySpecificItem(id: '9', title: 'Pancake',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 251 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
      CategorySpecificItem(id: '10', title: 'Flatbread',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 987 ,imagePath: 'assets/images/categorySpecificItems/purpleCauliflower.png' ),
      CategorySpecificItem(id: '11', title: 'French stick',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 232 ,imagePath: 'assets/images/categorySpecificItems/savoyCabbage.png' ),
      CategorySpecificItem(id: '12',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), title: 'Yeast bread', price: 321 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
    ],
    'Sweets':[
     CategorySpecificItem(id: '13', title: 'Rabidi',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 879 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
      CategorySpecificItem(id: '14', title: 'Rasmalali',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 234 ,imagePath: 'assets/images/categorySpecificItems/purpleCauliflower.png' ),
      CategorySpecificItem(id: '15', title: 'Kajukatli',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 229 ,imagePath: 'assets/images/categorySpecificItems/savoyCabbage.png' ),
      CategorySpecificItem(id: '16', title: 'Petha',description :ItemStory(
        'Kolkata',
        'A French stick, also known as a baguette, is a long, thin loaf of bread with a crispy crust and soft interior. It is a staple in French cuisine.'), price: 921 ,imagePath: 'assets/images/categorySpecificItems/cabbage.png' ),
    ],
  };

  Map<String,dynamic> get mapItems {

    return {..._mapItems};
    

  }

  

 

    


  }


