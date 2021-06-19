import 'package:whats/Model/Chat.dart';
import 'package:whats/Screens/PersonChat.dart';
import 'package:whats/widget/SingleChat.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  static String id = 'ChatPage';
  @override
  _ChatPageState createState() => _ChatPageState();
}
class _ChatPageState extends State<ChatPage> {
  List<ChatDetails> chats=[
    ChatDetails(name: 'Sayed',time: '6:00',subtitle: 'Hello Sayed',isGroup: false,isRead: false),
    ChatDetails(name: 'Ahmed',time: '5:00',subtitle: 'Hello Ahmed',isGroup: false,isRead: true),
    ChatDetails(name: 'Hatem',time: '3:00',subtitle: 'Hello Hatem',isGroup: false,isRead: false),
    ChatDetails(name: 'Ali',time: '4:30',subtitle: 'Hello Ali',isGroup: false,isRead: true),
    ChatDetails(name: 'Flutter group',time: '8:30',subtitle: 'Hello flutter group',isGroup: true,isRead: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.chat),
        onPressed: (){},
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>PersonChat(chatDetails: chats[index],)));
              },
              child: SingleChat(
                chatdetails: chats[index],
              ),
            );
          }
      ),
    );

  }
}
