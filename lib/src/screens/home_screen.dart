import 'package:flutter/material.dart';
import 'package:rapid_rescue/src/screens/hotlines_screen.dart';
import 'package:rapid_rescue/src/screens/nearby_screen.dart';
import 'package:rapid_rescue/src/screens/profile_screen.dart';
import 'package:rapid_rescue/src/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  var titles = ["Hotlines", "Nearby", "Profile", "Settings"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(title: Text(titles[currentPageIndex]), centerTitle: true),
      body: [
        const HotlinesScreen(),
        const NearbyScreen(),
        const ProfileScreen(),
        const SettingsScreen()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <NavigationDestination>[
          NavigationDestination(
              icon: Icon(Icons.call_outlined), label: "Hotlines"),
          NavigationDestination(
              icon: Icon(Icons.map_outlined), label: "Nearby"),
          NavigationDestination(
              icon: Icon(Icons.person_outlined), label: "Profile"),
          NavigationDestination(
              icon: Icon(Icons.settings_outlined), label: "Settings"),
        ],
      ),
    );
  }
}
