import 'package:flutter/material.dart';

import '../model/category.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
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
                  _selectedCategory = index;
                });
              },
              child: Container(
                height: 70,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: index == _selectedCategory
                        ? Colors.cyan
                        : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  category[index].name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
