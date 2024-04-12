


import 'package:flutter/material.dart';

class CategoryItem with ChangeNotifier  {

  final String id;
  int length;
  final String title;
  final String imagePath;

  CategoryItem(
    this.id,
    this.length,
    this.imagePath,
    this.title,
  );
  
}  



