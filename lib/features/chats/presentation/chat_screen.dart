import 'package:flutter/material.dart';
import 'package:sayakat/features/chats/presentation/widgets/chat_item_widget.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Чаты',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
            ChatItemWidget(text: 'Общий чат'),
            SizedBox(height: 12),
            ChatItemWidget(text: 'Написать разработчику'),
          ],
        ),
      ),
    );
  }
}
