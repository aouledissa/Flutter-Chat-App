import 'package:chat_app/models/message.dart';
import 'package:flutter/material.dart';

import 'chat_info.dart';
import 'chat_tile_body.dart';

class ChatTile extends StatelessWidget {
  final Message chat;

  const ChatTile({Key key, this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage(chat.sender.imageUrl),
              ),
              SizedBox(
                width: 5.0,
              ),
              ChatTileBody(chat: chat),
            ],
          ),
          ChatTileInfo(chat: chat),
        ],
      ),
    );
  }
}
