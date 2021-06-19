import 'package:whats/Model/Chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PersonChat extends StatefulWidget {
  static String id = 'PersonChat';
  var chatDetails = ChatDetails();
  PersonChat({@required this.chatDetails});
  @override
  _PersonChatState createState() => _PersonChatState();
}

class _PersonChatState extends State<PersonChat> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                child:SvgPicture.asset( widget.chatDetails.isGroup?'assets/groups_black_24dp.svg':'assets/person_black_24dp.svg',color: Colors.white,),
              ),
              SizedBox(width:height*0.02 ,),
              Column(

                children: [
                  Text(widget.chatDetails.name),
                  Text('last seen at ${widget.chatDetails.time}'),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Icon(Icons.videocam),
          SizedBox(width: height*0.02,),
          Icon(Icons.call),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text('view contact')),
              PopupMenuItem(child: Text('Media,links,and docs')),
              PopupMenuItem(child: Text('Search')),
              PopupMenuItem(child: Text('Mute notifications')),
              PopupMenuItem(child: Text('Wallpaper')),
              PopupMenuItem(child: Row(
                children: [
                  Text('More'),
                  SizedBox(width: height*.4,),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                ],
              )),
            ];
          }
          ),
        ],
      ),
    );
  }
}
