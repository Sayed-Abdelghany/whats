import 'package:whats/Screens/ChatPage.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static String id = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search,size: 30,),
            SizedBox(width: 10,),
            PopupMenuButton(itemBuilder:(context){
              return[
                PopupMenuItem(child: Text('New Group',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                PopupMenuItem(child: Text('New broadcast',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                PopupMenuItem(child: Text('Whatsapp web',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                PopupMenuItem(child: Text('Started messages',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                PopupMenuItem(child: Text('Settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
              ];
            }
            ),
          ],
          bottom:TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.camera,size: 20,),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Chats',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Status',style: TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Calls',style: TextStyle(fontSize: 20),),
              ),
            ],
          ) ,
        ),
        body: TabBarView(
          children: [
            Center(child: Text('camera',style: TextStyle(fontSize: 40),)),
            ChatPage(),
            Center(child: Text('status',style: TextStyle(fontSize: 40),)),
            Center(child: Text('calls',style: TextStyle(fontSize: 40),)),
          ],
        ),
      ),
    );
  }
}
