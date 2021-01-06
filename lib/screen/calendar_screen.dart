import 'package:flutter/material.dart';
import 'package:kinesio/screen/work_screen.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:get/get.dart';

class CalendarScreen extends StatefulWidget {
  final VoidCallback nextTab;
  CalendarScreen(this.nextTab);

  @override
  _CalendarScreenState createState() => new _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarController _calendarController;
  Map<DateTime, List> _events;
  List _selectedEvents;

  @override
  void initState() {
    super.initState();
    final _selectedDay = DateTime.now();

    _events = {
      _selectedDay.subtract(Duration(days: 10)): [
        'Calentamiento A0',
        'Ejercicio B0',
        'Elongacion C0'
      ],
      _selectedDay.subtract(Duration(days: 27)): ['Ejercicio A1'],
      // _selectedDay.subtract(Duration(days: 20)): [
      //   'Evento A2',
      //   'Evento B2',
      //   'Evento C2',
      //   'Evento D2'
      // ],
      _selectedDay.subtract(Duration(days: 16)): [
        'Calentamiento A3',
        'Ejercicio B3'
      ],
      // _selectedDay.subtract(Duration(days: 10)): [
      //   'Evento A4',
      //   'Evento B4',
      //   'Evento C4'
      // ],
      // _selectedDay.subtract(Duration(days: 4)): [
      //   'Evento A5',
      //   'Evento B5',
      //   'Evento C5'
      // ],
      _selectedDay.subtract(Duration(days: 2)): [
        'Calentamiento A6',
        'Ejercicio B6'
      ],
      _selectedDay: ['Ejercicio A7'],
      _selectedDay.add(Duration(days: 1)): [
        'Calentamiento A8',
        'Ejercicio B8',
        'Ejercicio C8',
        'Elongacion D8'
      ],
      // _selectedDay.add(Duration(days: 3)):
      //     Set.from(['Event A9', 'Event A9', 'Event B9']).toList(),
      // _selectedDay.add(Duration(days: 7)): [
      //   'Evento A10',
      //   'Evento B10',
      //   'Evento C10'
      // ],
      // _selectedDay.add(Duration(days: 11)): ['Event A11', 'Event B11'],
      // _selectedDay.add(Duration(days: 17)): [
      //   'Evento A12',
      //   'Evento B12',
      //   'Evento C12',
      //   'Evento D12'
      // ],
      // _selectedDay.add(Duration(days: 22)): ['Event A13', 'Event B13'],
      // _selectedDay.add(Duration(days: 26)): [
      //   'Evento A14',
      //   'Evento B14',
      //   'Evento C14'
      // ],
    };

    _selectedEvents = _events[_selectedDay] ?? [];
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EJERCICIOS",
          style: TextStyle(color: Colors.black26, fontSize: 14),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          margin: EdgeInsets.zero,
          //padding: EdgeInsets.only(left: 4, right: 4),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // Switch out 2 lines below to play with TableCalendar's settings
              //-----------------------
              _buildTableCalendar(),
              // _buildTableCalendarWithBuilders(),
              const SizedBox(height: 8.0),
              _buildEventList(),
            ],
          ),
        ),
      ),
    );
  }

  void _onDaySelected(DateTime day, List events, List holiday) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onVisibleDaysChanged');
  }

  void _onCalendarCreated(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onCalendarCreated');
  }

  Widget _buildEventsMarker(DateTime date, List events) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        shape: BoxShape.rectangle,
        color: _calendarController.isSelected(date)
            ? Colors.black
            : date.day < 15
                ? Colors.black26
                : Colors.red,
      ),
      width: 6.0,
      height: 6.0,
      child: Text(
        //'${events.length}',
        "",
      ),
    );
  }

// Simple TableCalendar configuration (using Styles)
  Widget _buildTableCalendar() {
    return TableCalendar(
      locale: "es_ES",
      calendarController: _calendarController,
      events: _events,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        //markersPositionTop: 0,
        weekendStyle: TextStyle(color: Colors.black12),
        selectedColor: Colors.red,
        todayColor: Colors.black,
        markersColor: Colors.black26,
        outsideDaysVisible: false,
        markersPositionBottom: 0,
        markersMaxAmount: 1,
        renderDaysOfWeek: true,
        weekdayStyle: TextStyle(color: Colors.white),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        //decoration: BoxDecoration(color: Colors.yellow),
        dowTextBuilder: (date, locale) =>
            DateFormat.E(locale).format(date).toUpperCase(),
        weekendStyle: TextStyle(
          //backgroundColor: Colors.green,
          color: Colors.white,
        ),
      ),
      initialCalendarFormat: CalendarFormat.month,
      availableCalendarFormats: {CalendarFormat.month: "mes"},
      headerStyle: HeaderStyle(
        decoration: BoxDecoration(color: Colors.white),
        titleTextBuilder: (date, locale) =>
            DateFormat.MMMM(locale).format(date).toUpperCase(),
        centerHeaderTitle: true,
        formatButtonTextStyle:
            TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
        formatButtonDecoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onDaySelected: _onDaySelected,
      onVisibleDaysChanged: _onVisibleDaysChanged,
      onCalendarCreated: _onCalendarCreated,
      builders: CalendarBuilders(
        markersBuilder: (context, date, events, holidays) {
          final children = <Widget>[];

          if (events.isNotEmpty) {
            children.add(
              Positioned(
                left: 18,
                bottom: 0,
                child: _buildEventsMarker(date, events),
              ),
            );
          }

          return children;
        },
      ),
    );
  }

  Widget _buildEventList() {
    return Column(
      children: _selectedEvents
          .map((event) => InkWell(
              onTap: () => Get.to(WorkScreen(widget.nextTab)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 8,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lunes 1/10",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.calendar_today),
                          Text(
                            "2 Ejercicios",
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.timer),
                          Text(
                            "50 min",
                            style: TextStyle(fontSize: 13),
                          ),
                          RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.black,
                            child: Icon(
                              Icons.play_arrow,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(2.0),
                            shape: CircleBorder(),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 10,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Recuperacion",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ]
                    // Text("Lun 1"),

                    ),
              )))
          .toList(),
    );
  }
}
