import 'package:flutter/material.dart';
import 'package:tickets/screens/home_screen.dart';
import 'package:tickets/screens/profile_screen.dart';
import 'package:tickets/screens/search_screen.dart';
import 'package:tickets/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widget = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widget[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        elevation: 10,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526480),
        onTap: onTap,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: "Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
