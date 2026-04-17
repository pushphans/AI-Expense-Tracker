import 'package:ai_expense_tracker/view/expense_record_screen.dart';
import 'package:ai_expense_tracker/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => MyBottomNavigationBarState();
}

class MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  List<Widget> pages = [HomeScreen(), ExpenseRecordScreen()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: ResponsiveNavigationBar(
        selectedIndex: index,
        navigationBarButtons: [
          NavigationBarButton(
            icon: Icons.home,
            text: "Home",
            textColor: Colors.white,
            backgroundColor: Colors.green.shade800,
          ),
          NavigationBarButton(
            icon: Icons.money,
            text: "Expenses",
            textColor: Colors.white,
            backgroundColor: Colors.green.shade800,
          ),
        ],
        onTabChange: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
