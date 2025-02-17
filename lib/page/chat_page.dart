import 'package:firebase_chat_example/model/user.dart';
import 'package:firebase_chat_example/widget/messages_widget.dart';
import 'package:firebase_chat_example/widget/new_message_widget.dart';
import 'package:firebase_chat_example/widget/profile_header_widget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final User user;

  const ChatPage({
    @required this.user,
    Key key,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              ProfileHeaderWidget(
                  name: widget.user.name, urlAvatar: widget.user.urlAvatar),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: MessagesWidget(idUser: widget.user.idUser),
                ),
              ),
              NewMessageWidget(idUser: widget.user.idUser)
            ],
          ),
        ),
      );
}
