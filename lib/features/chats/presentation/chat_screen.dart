import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/features/chats/presentation/widgets/message_item_widget.dart';
import 'package:sayakat/widgets/custom_app_bar.dart';
import 'package:sayakat/widgets/custom_text_fields.dart';
import 'package:sayakat/widgets/spaces.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Чат с разработчиком',
      ),
      body: SafeArea(
        child: ListView.separated(
          reverse: true,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: 22,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) => MessageItemWidget(
            isMy: index.isEven,
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: context.bottom),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: SafeArea(
                    child: CustomTextField(
                      hintText: 'Написать сообщение',
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
