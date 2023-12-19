import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/date_format.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/show_calendar/show_calendar.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});
  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime? date;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      color: date != null ? AppColors.orangeff5733 : AppColors.colorB6B6B6,
      onPress: () async {
        await showOneDateCalendar(
          date ?? DateTime.now(),
          context,
          (selectedDate) {
            setState(() {
              date = selectedDate;
            });
          },
        );
      },
      text: date != null ? AppDateFormats.formatDdMMYyyy.format(date!) : 'Дата',
    );
  }
}
