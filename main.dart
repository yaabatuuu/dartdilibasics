import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

void main() {
  final client = StreamChatClient(
    'YOUR_API_KEY',
    logLevel: Level.INFO,
  );

  final user = User(id: 'your_user_id');

  client.connectUser(user, 'your_user_token');

  runApp(MyApp(client));
}

class MyApp extends StatelessWidget {
  final StreamChatClient client;

  MyApp(this.client);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamChat(
        client: client,
        child: ChannelListPage(),
      ),
    );
  }
}
