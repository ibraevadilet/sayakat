import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/date_format.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:sayakat/widgets/show_calendar/show_calendar.dart';

class DatesWidget extends StatefulWidget {
  const DatesWidget({super.key});

  @override
  State<DatesWidget> createState() => _DatesWidgetState();
}

class _DatesWidgetState extends State<DatesWidget> {
  DateTime? dateFrom;
  DateTime? dateUntil;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            color: dateFrom != null
                ? AppColors.orangeff5733
                : AppColors.colorB6B6B6,
            onPress: () async {
              await showOneDateCalendar(
                dateFrom: dateFrom,
                dateTo: dateUntil,
                dateFrom ?? DateTime.now(),
                context,
                (selectedDate) {
                  setState(() {
                    dateFrom = selectedDate;
                  });
                },
              );
            },
            text: dateFrom != null
                ? AppDateFormats.formatDdMM.format(dateFrom!)
                : 'C',
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: CustomButton(
            color: dateUntil != null
                ? AppColors.orangeff5733
                : AppColors.colorB6B6B6,
            onPress: () async {
              await showOneDateCalendar(
                isFrom: false,
                dateFrom: dateFrom,
                dateTo: dateUntil,
                dateUntil ?? DateTime.now(),
                context,
                (selectedDate) {
                  setState(() {
                    dateUntil = selectedDate;
                  });
                },
              );
            },
            text: dateUntil != null
                ? AppDateFormats.formatDdMM.format(dateUntil!)
                : 'До',
          ),
        ),
      ],
    );
  }
}
