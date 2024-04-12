import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../models/category__specific_item.dart' as cp;
import '../widgets/category_specific_item_card.dart';


class CategorySpecificItems extends StatelessWidget {

  static const routeName = '/category-specific-screen';

  @override

  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)!.settings.arguments as String;
    
    final items = Provider.of<cp.CategorySpecificItemProvider>(context,listen: false).mapItems;
    
    final listItems = items[title];
    final appBar =  AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,),alignment: Alignment.topLeft,))
        ],
        
      );
    
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
               Text(title,style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.start,),
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
              height: 90,
             ),
             Container(
              height: MediaQuery.of(context).size.height-appBar.preferredSize.height*0.8,
              child: ListView.builder(itemBuilder: (context, index) => ChangeNotifierProvider<cp.CategorySpecificItem>.value(value :  listItems[index],child: Padding(padding: EdgeInsets.symmetric(vertical: 10,),child: CategorySpecificItemCard(listItems[index],title))),itemCount: listItems.length ,padding: EdgeInsets.all(10),)),
          
            ],
          ),
        ),
      ),
    );
  }



}