
import 'package:addmenubar/views/Books.dart';
import 'package:addmenubar/views/employee.dart';
import 'package:addmenubar/views/products.dart';
import 'package:addmenubar/views/students.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
   int _cindex=0;
  final pages=[Books(),Employees(),Students()
  ,Products()];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[_cindex],

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: _cindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.library_books),
              title: Text("Books"),
              backgroundColor: Colors.blueAccent,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.people),
              title: Text("Employee"),
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              title: Text("Students"),
              backgroundColor: Colors.pinkAccent,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shop_two),
              title: Text("Products"),
              backgroundColor: Colors.deepPurple,
            ),
          ],
          onTap: (index)
          {
            setState(() {
              _cindex=index;
            });
          },
        ),

      ),
    );
  }
}
