import 'package:flutter/material.dart';
import 'package:whatsapp/common/theme/dark_theme.dart';
import 'package:whatsapp/common/theme/light_theme.dart';
import 'package:whatsapp/feature/auth/pages/login_pages.dart';
import 'package:whatsapp/feature/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, 
        title: 'wp',
        theme: lightTheme(),
        darkTheme: darkTheme(),
        
         home: LoginPages());
  }
}
