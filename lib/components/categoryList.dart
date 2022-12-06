import 'package:flutter/material.dart';

import '../model/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5),
      scrollDirection: Axis.horizontal,
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 25,
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.red
            ),
            child: Text(category[index].name, style: TextStyle(fontSize: 18),),
          ),
        );
      },);
  }
}
