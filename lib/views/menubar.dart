
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  // int _cindex=0;
  //final pages=[];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: 1,
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
            BottomNavigationBarItem(icon: Icon(Icons.shop),
              title: Text("Products"),
              backgroundColor: Colors.deepPurple,
            ),
          ],
        ),

      ),
    );
  }
}
