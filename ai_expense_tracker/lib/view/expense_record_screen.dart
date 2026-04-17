import 'package:flutter/material.dart';

class ExpenseRecordScreen extends StatefulWidget {
  const ExpenseRecordScreen({super.key});

  @override
  State<ExpenseRecordScreen> createState() => _ExpenseRecordScreenState();
}

class _ExpenseRecordScreenState extends State<ExpenseRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Records'),
        backgroundColor: Colors.green.shade800,
        foregroundColor: Colors.white,
      ),
    );
  }
}
