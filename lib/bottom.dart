import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Cart.dart';
import 'package:untitled1/photo.dart';
import 'package:untitled1/profile.dart';

import 'Add.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentindex = 0;
  final pages = [Photo(), Add(), Cart(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentindex,
        onTap: (newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circle,color: Colors.black,),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store_outlined,color: Colors.black,),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined,color: Colors.black,),
            label: 'Profile',
          ),
        ],

      ),
    );
  }
}
