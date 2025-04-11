import 'package:flutter/material.dart';
import 'chart_screen.dart'; // Import the Chart Screen

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
             
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChartScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[100], // Pastel color for button
                ),
                child: Text('View Monthly Expenses'),
              ),
              SizedBox(height: 20),
              
              // Example of categories and amounts
              CategoryCard(
                category: 'Food',
                amount: 120.0,
              ),
              CategoryCard(
                category: 'Transportation',
                amount: 75.0,
              ),
              CategoryCard(
                category: 'Entertainment',
                amount: 50.0,
              ),
              // Add more categories as needed
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  final double amount;

  CategoryCard({required this.category, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        title: Text(category),
        subtitle: Text('Amount Spent: \$${amount.toStringAsFixed(2)}'),
      ),
    );
  }
}
