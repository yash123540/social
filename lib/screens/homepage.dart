// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),

        ],
        backgroundColor: Colors.red,
      ),
    );
  }
}
