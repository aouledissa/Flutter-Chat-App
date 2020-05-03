import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatTileBody extends StatelessWidget {
  final Message chat;

  const ChatTileBody({Key key, this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          chat.sender.name,
          style: TextStyle(
              color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.0),
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Text(
            chat.text,
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
