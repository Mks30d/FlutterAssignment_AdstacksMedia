import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 11),
            child: Text(
              "GENERAL 10:00 AM TO 7:00 PM",
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
          Container(
            height: 170,
            width: 200,
            margin: EdgeInsets.all(11),
            padding: EdgeInsets.only(bottom: 11),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11),
            ),
            child: TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                headerPadding: EdgeInsets.all(0),
                leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: Colors.black),
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold
                ),
              ),
              calendarStyle: const CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Color(0xFF4A40FF),
                    shape: BoxShape.circle,
                  ),
                  // cellPadding: EdgeInsets.all(0),
                  // cellMargin: EdgeInsets.only(left: 0),

                  todayTextStyle: TextStyle(fontSize: 10, color: Colors.white),
                  selectedDecoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  selectedTextStyle:
                      TextStyle(fontSize: 10, color: Colors.white,),
                  weekendTextStyle:
                      TextStyle(fontSize: 10, color: Colors.black),
                  defaultTextStyle:
                      TextStyle(fontSize: 10, color: Colors.black),
                  cellMargin: EdgeInsets.zero,
                  weekNumberTextStyle:
                      TextStyle(fontSize: 10, color: Colors.grey),
                  outsideTextStyle:
                      TextStyle(fontSize: 10, color: Colors.grey)
              ),
              rowHeight: 18,
              daysOfWeekHeight: 16,
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(fontSize: 10, color: Colors.black),
                  weekendStyle: TextStyle(fontSize: 10, color: Colors.black)
              ),
            ),
          ),
        ],
      );
  }
}
