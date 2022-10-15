import 'package:chat/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/screens/chat_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat App UI',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home:  HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/chat', page: () => ChatScreen())
        
      ],
    );
  }
}