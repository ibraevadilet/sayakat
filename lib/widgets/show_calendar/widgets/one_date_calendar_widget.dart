import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';

class OneDateCalendarWidget extends StatefulWidget {
  const OneDateCalendarWidget({
    required this.onTap,
    required this.initialDate,
    required this.isFrom,
    this.dateTo,
    this.dateFrom,
    Key? key,
  }) : super(key: key);
  final Function(DateTime? selectedDay) onTap;
  final DateTime initialDate;
  final DateTime? dateTo;
  final DateTime? dateFrom;
  final bool isFrom;

  @override
  State<OneDateCalendarWidget> createState() => _OneDateCalendarWidgetState();
}

class _OneDateCalendarWidgetState extends State<OneDateCalendarWidget> {
  final focusedDay = DateTime.now();
  late DateTime selectedDay;

  @override
  void initState() {
    initializeDateFormatting();
    if (widget.isFrom) {
      selectedDay = widget.initialDate;
    } else {
      if (widget.dateFrom == null) {
        selectedDay = widget.initialDate;
      } else {
        selectedDay = widget.initialDate;
      }
    }

    super.initState();
  }

  selectDay(selectedDayFrom, focusedDay) {
    if (!selectedDayFrom
        .isBefore(DateTime.now().subtract(const Duration(days: 1)))) {
      setState(() {
        selectedDay = selectedDayFrom;
        focusedDay = focusedDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        // height: 550,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TableCalendar(
                onDayLongPressed: (day, day1) {},
                locale: 'ru_RU',
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(
                  leftChevronIcon: const Icon(
                    Icons.chevron_left,
                    color: AppColors.green8edd65,
                  ),
                  rightChevronIcon: const Icon(
                    Icons.chevron_right,
                    color: AppColors.green8edd65,
                  ),
                  titleTextStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  titleCentered: true,
                  titleTextFormatter: (date, locale) =>
                      DateFormat.MMMM('ru').format(date),
                  formatButtonVisible: false,
                  headerPadding: const EdgeInsets.only(top: 20, bottom: 30),
                  rightChevronPadding: const EdgeInsets.only(right: 30),
                  leftChevronPadding: const EdgeInsets.only(left: 30),
                ),
                calendarStyle: CalendarStyle(
                  withinRangeTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  selectedTextStyle: AppTextStyles.s15W400(color: Colors.white),
                  defaultTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  weekendTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  selectedDecoration: const BoxDecoration(
                    color: AppColors.orangeff5733,
                    shape: BoxShape.circle,
                  ),
                  todayTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekendStyle: TextStyle(color: AppColors.orangeff5733),
                  weekdayStyle: TextStyle(color: AppColors.orangeff5733),
                ),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: focusedDay,
                selectedDayPredicate: (day) => isSameDay(selectedDay, day),
                calendarFormat: CalendarFormat.month,
                rangeSelectionMode: RangeSelectionMode.toggledOff,
                onDaySelected: (selectedDayFrom, focusedDay) {
                  if (widget.isFrom) {
                    if (widget.dateTo == null) {
                      selectDay(selectedDayFrom, focusedDay);
                    } else {
                      if (selectedDayFrom.isBefore(
                          widget.dateTo!.add(const Duration(days: 1)))) {
                        selectDay(selectedDayFrom, focusedDay);
                      }
                    }
                  } else {
                    if (widget.dateFrom == null) {
                      selectDay(selectedDayFrom, focusedDay);
                    } else {
                      if (selectedDayFrom.isAfter(
                          widget.dateFrom!.subtract(const Duration(days: 1)))) {
                        selectDay(selectedDayFrom, focusedDay);
                      }
                    }
                  }
                },
                onPageChanged: (focusedDay) {
                  focusedDay = focusedDay;
                },
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      color: AppColors.colorF50C28,
                      onPress: () {
                        widget.onTap(null);
                        Navigator.pop(context);
                      },
                      text: 'Сбросить',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      color: AppColors.orangeff5733,
                      onPress: () {
                        Navigator.pop(context);
                        widget.onTap(selectedDay);
                      },
                      text: 'Применить',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
