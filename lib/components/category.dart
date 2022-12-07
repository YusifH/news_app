import 'package:flutter/material.dart';

import '../model/category.dart';

class Category extends StatefulWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 25,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: index == selectedCategory ? Colors.cyan.shade400 : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  category[index].name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400,),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}