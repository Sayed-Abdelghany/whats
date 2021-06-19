import 'package:whats/Model/Chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SingleChat extends StatefulWidget {
  var chatdetails = ChatDetails();
  SingleChat({this.chatdetails});
  @override
  _SingleChatState createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            radius: 40,
            child: SvgPicture.asset(widget.chatdetails.isGroup?'assets/groups_black_24dp.svg':'assets/person_black_24dp.svg',
              color:Colors.white ,width: 30,),
          ),
          title: Text(widget.chatdetails.name,style: TextStyle(fontSize: 20),),
          subtitle: Row(
            children: [
              widget.chatdetails.isRead?Icon(Icons.done_all,color:Colors.blue ,):Icon(Icons.done),
              Text(widget.chatdetails.subtitle),
            ],
          ),
          trailing: Text(widget.chatdetails.time),
        ),
        Divider(thickness: 1.5,),
      ],
    );
  }
}
