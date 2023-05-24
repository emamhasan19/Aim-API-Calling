// ignore_for_file: library_private_types_in_public_api

import 'package:api_calling/core/colors.dart';
import 'package:api_calling/core/routes/routes.dart';
import 'package:api_calling/features/pages/post_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define your theme properties here
        // primaryColor: Palette.primary_color,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          color: Palette.primary_color, // Set the app bar color here
        ),
        // ... add more theme properties as needed
      ),
      onGenerateRoute: generateRoute,
      debugShowCheckedModeBanner: false,
      home: const PostPage(),
    );
  }
}
