import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

class ChatTileInfo extends StatelessWidget {
  final Message chat;

  const ChatTileInfo({Key key, this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      key: Key('chatTile'),
      children: <Widget>[
        Text(
          chat.time,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0),
        chat.unread
            ? Container(
                width: 40.0,
                height: 20.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                alignment: Alignment.center,
                child: Text(
                  "NEW",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            : Text(''),
      ],
    );
  }
}
