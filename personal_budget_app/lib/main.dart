import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/dashboard_screen.dart';
import 'firebase_options.dart'; // Import Firebase options file for web configuration

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the generated options for the web platform
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define primary and accent colors
        primaryColor: Color(0xFFB3CDE0), // Pastel Blue
        hintColor: Color(0xFFFFD3B6), // Pastel Peach

        // Set background color
        scaffoldBackgroundColor: Color(0xFFF0F4F8), // Light neutral gray

        // AppBar color
        appBarTheme: AppBarTheme(
          color: Color(0xFFB3CDE0), // Pastel Blue
        ),

        // Text theme
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Color(0xFF2C3E50)), // Dark neutral
          displayMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color: Color(0xFF2C3E50)),
          bodyLarge: TextStyle(fontSize: 16.0, color: Color(0xFF2C3E50)), // Dark neutral for body text
          bodyMedium: TextStyle(fontSize: 14.0, color: Color(0xFF7F8C8D)), // Lighter neutral for secondary text
        ),

        // Button themes
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFFFFD3B6), // Pastel Peach for buttons
          textTheme: ButtonTextTheme.primary,
        ),

        // Input decoration theme for text fields
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBDC3C7)), // Neutral gray border color
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFB3CDE0)), // Pastel Blue for focused borders
          ),
          labelStyle: TextStyle(color: Color(0xFFBDC3C7)), // Neutral color for label text
        ),
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
