import 'package:ai_expense_tracker/core/shared_widgets/bottom_navigation_bar.dart';
import 'package:ai_expense_tracker/view/expense_record_screen.dart';
import 'package:ai_expense_tracker/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Expense Tracker',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/expenses': (context) => ExpenseRecordScreen(),
        '/bottom-nav': (context) => MyBottomNavigationBar(),
      },
    );
  }
}
