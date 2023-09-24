import 'package:flutter/material.dart';

import 'widgets/one_date_calendar_widget.dart';

Future<void> showOneDateCalendar(
  DateTime initialDate,
  BuildContext context,
  Function(DateTime? selectedDate) onTap, {
  DateTime? dateTo,
  DateTime? dateFrom,
  bool isFrom = true,
}) async {
  await showDialog(
    context: context,
    builder: (context) => StatefulBuilder(builder: (context, setState) {
      return OneDateCalendarWidget(
        isFrom: isFrom,
        onTap: onTap,
        initialDate: initialDate,
        dateTo: dateTo,
        dateFrom: dateFrom,
      );
    }),
  );
}
