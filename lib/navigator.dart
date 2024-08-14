import 'package:flutter/material.dart';
import 'package:mogab/Screens/home_screen_page.dart';
import 'package:mogab/Screens/moga_chat.dart';
import 'package:mogab/util/logo_title.dart';

class BottomNavBarPage extends StatefulWidget {


  const BottomNavBarPage({
    super.key, 
  });
  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int _selectedIndex = 0;
  void _onItemTap(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  List<Widget> get _screens => [
        const HomeScreenPage(),
        const MogaChat(),
        const Center(child: Text("Account")),
        const Center(child: Text("Profile")),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const LogoTitle(),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assistant), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.medication), label: "Meditate"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
