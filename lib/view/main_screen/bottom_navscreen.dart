import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/view/create_account_screen/create_accountscreen.dart';
import 'package:flutter_instagram_clone/view/homescreen/homescreen.dart';
import 'package:flutter_instagram_clone/view/notification_screen/notification_screen.dart';
import 'package:flutter_instagram_clone/view/profile_screen/profile_screen.dart';
import 'package:flutter_instagram_clone/view/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    SearchScreen(),
    Container(
      color: Colors.white,
    ),
    Notification_Screen(),
    InstagramProfilePage()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
            setState(() {});
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreateAccountScreen(),
                ));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),

          // center bottm nav  button
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all()),
                  child: const Icon(Icons.add)),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ""),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
              ),
              label: ""),
        ],
      ),
    );
  }
}
