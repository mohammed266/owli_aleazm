import 'package:flutter/material.dart';

import 'widgets/my_curved_navigation_bar.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  int selectedIndex = 0;
  final List<Widget> pages = const [
    Center(child: Text('Home Page1')),
    Center(child: Text('Search Page2')),
    Center(child: Text('Profile Page3')),
    Center(child: Text('Profile Page4')),
    Center(child: Text('Profile Page5')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyCurvedNavigationBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
