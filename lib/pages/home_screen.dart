import 'package:flutter/material.dart';
import 'package:news_app/pages/all_news.dart';
import 'package:news_app/pages/category.dart';
import 'package:news_app/pages/top_headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllNewsPage()));
                },
                icon: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            _searchBar(),
            const SizedBox(
              height: 15,
            ),
            const Category(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Headers',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllNewsPage()));
                      },
                      child: const Text(
                        'See All',
                        style: TextStyle(color: Colors.cyan),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TopHeaders(),
          ],
        ));
  }

  Padding _searchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        autofocus: false,
        cursorColor: Colors.black,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: Colors.grey.shade700,
            ),
          ),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)),
        ),
      ),
    );
  }
}
