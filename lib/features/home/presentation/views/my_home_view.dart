import 'package:flutter/material.dart';

import 'home_view.dart';
import 'widgets/my_curved_navigation_bar.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  int selectedIndex = 0;
  final List<Widget> pages = const [
    HomeView(),
    Center(child: Text('Page2')),
    Center(child: Text('Page3')),
    Center(child: Text('Page4')),
    Center(child: Text('Page5')),
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
