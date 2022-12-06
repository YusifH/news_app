import 'package:flutter/material.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/pages/all_news.dart';

import '../components/customListtile.dart';
import '../model/article_model.dart';
import '../services/api_service.dart';

class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Flutter',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(' News', style: TextStyle(color: Colors.blueAccent)),
            ],
          ),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.black,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AllNewsPage()));
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                cursorColor: Colors.black,
                style: TextStyle(
                    color: Colors.black
                ),
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined, color: Colors.grey.shade700,),),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
              const SizedBox(height: 15.0,),
              Expanded(
                child: ListView.builder(
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
                          child: Text(category[index].name, style: const TextStyle(fontSize: 18),),
                        ),
                      );
                    },),
              ),
              Text('data')
            ],
          ),
        ));
  }
}
