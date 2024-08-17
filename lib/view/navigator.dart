import 'package:flutter/material.dart';
import 'package:mogab/view/Screens/audio_list_screen.dart';
import 'package:mogab/view/Screens/home_screen_page.dart';
import 'package:mogab/view/Screens/mange_breeth.dart';
import 'package:mogab/view/Screens/moga_chat.dart';
import 'package:mogab/view/util/logo_title.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({
    super.key,
    this.selectedIndex = 0,
    this.navigateToMeditate,
  });
  final int selectedIndex;
  final void Function()? navigateToMeditate;
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
        HomeScreenPage(),
        const MogaChat(),
        MusicListScreen(),
        BreathScreen(),
        const Center(child: Text("Account")),
        const Center(child: Text("Profile")),
      ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
    if (widget.navigateToMeditate != null) {
      widget.navigateToMeditate!();
    }
  }

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
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_sharp), label: "breath"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
