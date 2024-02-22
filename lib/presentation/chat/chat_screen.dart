import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.glamour.es/photos/616f809160f20fed760a334e/master/w_960,c_limit/659698.jpg'),
          ),
        ),
        title: const Text('Mi amor <3'),
        centerTitle: false,
      ),
    );
  }
}
