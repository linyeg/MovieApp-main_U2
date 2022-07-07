// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../detail/components/backdrop_rating.dart';
import 'dart:math';

void main() {
  runApp(const Gallery());
}

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Generate a list of dummy items
  final List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) => {
            "id": index,
            "title": "Item $index",
            "height": Random().nextInt(150) + 50.5
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gallery'),
        ),
        // implement the massonry layout
        body: MasonryGridView.count(
          itemCount: _items.length,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          // the number of columns
          crossAxisCount: 3, 
          // vertical gap between two items
          mainAxisSpacing: 4, 
          // horizontal gap between two items
          crossAxisSpacing: 4, 
          itemBuilder: (context, index) {
            // display each item with a card
            return Card(
              // Give each item a random background color
              color: Color.fromARGB(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256)),
              key: ValueKey(_items[index]['id']),
              child: SizedBox(
                height: _items[index]['height'],
                child: Center(
                  child: Text(_items[index]['title']),
                ),
              ),
            );
          },
        ));
  }
}