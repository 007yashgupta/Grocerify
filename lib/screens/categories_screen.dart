
import 'package:first_figma/widgets/category_item.dart';
import 'package:flutter/material.dart';
import '../DUMMY.dart';


class CategoriesScreen extends StatelessWidget {

  static const routeName = '/categories-screen';
 

  @override

  Widget build(BuildContext context) {
    final appBar = AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
          ),
        ],
        
      );

    return Scaffold(
     
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
         child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Categories',style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,),
             SizedBox(
              height: 25,
             ),
             SearchBar(
              
              // autoFocus: true,
              // controller: ,
              hintText: 'Search',
              leading: Icon(Icons.search),
              
              
        
        
             ),
             SizedBox(
              height: 30,
        
             ),
             Container(
              height: (MediaQuery.of(context).size.height-appBar.preferredSize.height) * 1 ,
              width: double.infinity,
               child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ),
                   itemBuilder: (context, index) => CategoryItem(title: categoryItems[index].title, imagePath:  categoryItems[index].imagePath, count: categoryItems[index].length) ,
                   itemCount: categoryItems.length,
                  ),
             ),
           ],
         ),
        
        ),
      )
    );
  }
}