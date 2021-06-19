import 'package:whats/Screens/ChatPage.dart';
import 'package:whats/Screens/PersonChat.dart';
import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';
void main(){
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomePage',
      routes: {
        HomePage.id:(context)=> HomePage(),
        ChatPage.id:(context)=> ChatPage(),
        PersonChat.id:(context)=>PersonChat(),
      },
    );
  }
}

