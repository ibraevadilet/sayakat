import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/date_format.dart';
import 'package:sayakat/theme/app_text_styles.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({
    super.key,
    required this.isMy,
  });

  final bool isMy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMy ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (isMy) const SizedBox(width: 50),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'sdhjkaldm idfs iosjf ',
                  style: AppTextStyles.s15W600(),
                ),
                const SizedBox(height: 12),
                Text(
                  AppDateFormats.formatDdMMYyyy.format(DateTime.now()),
                  style: AppTextStyles.s14W400(),
                ),
              ],
            ),
          ),
        ),
        if (!isMy) const SizedBox(width: 50),
      ],
    );
  }
}
