import 'package:flutter/material.dart';
import 'package:hospital_appointment_app/presentationLayer/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Appointment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff40ACC9)),
        fontFamily: 'Almarai',
        textTheme: ThemeData.light().textTheme.copyWith(
              headlineLarge: const TextStyle(
                  color: Color(0xff40ACC9),
                  fontSize: 29,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold),
              headlineMedium: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Almarai',
                fontWeight: FontWeight.bold,
              ),
              bodyMedium: const TextStyle(
                  color: Color(0xffADADAD),
                  fontSize: 20,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.normal),
              bodySmall: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold),
            ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
