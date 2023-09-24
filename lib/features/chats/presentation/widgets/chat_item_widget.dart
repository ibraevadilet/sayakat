import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/spaces.dart';

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Text(
        text,
        style: AppTextStyles.s17W600(),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
