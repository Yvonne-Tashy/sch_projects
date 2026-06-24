import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: Column(
        children: [
          Text("Hey there, this is my homepage!",
          style: TextStyle(color: Colors.blueAccent,
          fontSize: 20),),
          SizedBox(height: 10,),
          Icon(Icons.home, size: 50,)
        ],
      ),
    ),
    Center(
      child: Column(
        children: [
          Text("Hey there, this is my chatpage!",
          style: TextStyle(color: Colors.blueAccent,
          fontSize: 20),),
          SizedBox(height: 10,),
          Icon(Icons.message, size: 50,)
        ],
      ),
    ),
    Center(
      child: Column(
        children: [
          Text("Hey there, you're in a community",
          style: TextStyle(color: Colors.blueAccent,
          fontSize: 20),
          ),
          SizedBox(height: 10,),
          Icon(Icons.people, size: 50,)
        ],
      ),
    ),
    Center(
      child: Column(
        children: [
          Text("Hey there, this is your profile page!",
          style: TextStyle(color: Colors.blueAccent,
          fontSize: 20),),
          SizedBox(height: 10,),
          Icon(Icons.person, size: 50,)
        ],
      ),
    ),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,),
          label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat, color: Colors.white,),
          label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.group, color: Colors.white,),
          label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white,),
          label: "Profile")
        ]),
    );
  }
}