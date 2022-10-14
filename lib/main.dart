import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Bottom navigation app",
    home: MainPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> _widgets = [
    Container(
      color: Colors.blue,
      child: Center(child: Text("welcome to home")),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text("welcome to about")),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text("welcome to settings")),
    )
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff350000),
        title: Text("Bottom navigation app"),
      ),
      body: Center(child: _widgets[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "about"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings")
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _onItemTap(index);
        },
      ),
    );
  }
}
