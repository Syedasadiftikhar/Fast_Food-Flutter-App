import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ChezifyApp());
}

class ChezifyApp extends StatelessWidget {
  const ChezifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chezify Pizzas',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(
          0xFF1A1A1A,
        ), // Dark textured backdrop
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color(0xFFFF6D00), // Vibrant orange
          primary: const Color(0xFFFF6D00),
          secondary: const Color(0xFFE53935), // Energetic red
          surface: const Color(0xFF242424), // Modern card color
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
