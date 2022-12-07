import 'package:flutter/material.dart';

import 'category.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Category(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('TOP HEADER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                Text('Daha cox', style: TextStyle(color: Colors.blueAccent),)
              ],
            ),
            // const SizedBox(height: 15),
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.cyan
              ),
              child: Text('ssss'),
            )
          ],
        ),
      ),
    );

  }
}


