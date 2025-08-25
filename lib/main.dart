import 'package:car_rental/pages/cardetailspage.dart';
import 'package:car_rental/pages/confirmationpage.dart';
import 'package:car_rental/pages/homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Rental App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // Start the app at HomePage
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/details': (context) => const CarDetailsPage(),
        '/confirmation': (context) => const ConfirmationPage(),
      },
    );
  }
}
