import 'package:flutter/material.dart';
import 'package:beauty_app_ui/programes/dates.dart';
import 'package:beauty_app_ui/components/select_time.dart';
import 'package:beauty_app_ui/default_data/available_time_list.dart';
import 'package:beauty_app_ui/components/booking_btn.dart';

class SelectArea extends StatefulWidget {
  const SelectArea({super.key});

  @override
  State<SelectArea> createState() => _SelectDayAreaState();
}

var _selectedDate = null;

var selectTimeIndex;
Color timeBorderColour = Color(0xFFCDCDCD);
Color selectedTimeBorderColour = Color(0xFFFDCCC5);
Color timeTextColour = Color(0xFF7A7A7A);
Color selectedTimeTextColour = Color(0xFFFDCCC5);
String timeFamily = 'Raleway';
String selectedTimeFamily = 'Raleway-Bold';

class _SelectDayAreaState extends State<SelectArea> {
  @override
  Widget build(BuildContext context) {
    Dates date = Dates();
    date.addAllDays();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date',
                    style:
                        TextStyle(fontFamily: 'Raleway-SemiBold', fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Text(
                      '${date.getMonth()} >',
                      style: TextStyle(
                          fontFamily: 'Raleway-Medium',
                          fontSize: 18,
                          color: Color(0xFF7A7A7A)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 23),
              SizedBox(
                height: 72,
                child: Stack(
                  children: [
                    GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1),
                        itemCount: date.dateLists.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_selectedDate == index) {
                                  _selectedDate = null;
                                } else {
                                  _selectedDate = index;
                                }
                              });
                            },
                            child: Days(
                                date: date,
                                index: index,
                                colour: (_selectedDate == index)
                                    ? Color(0xFFFDCCC5)
                                    : Color(0xFFCDCDCD)),
                          );
                        }),
                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white38, Colors.white24],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 23),
              Text(
                'Availability',
                style: TextStyle(fontFamily: 'Raleway-SemiBold', fontSize: 18),
              ),
              SizedBox(height: 23),
              Wrap(
                runSpacing: 16,
                spacing: 16,
                children: List.generate(kTimeList.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectTimeIndex == index) {
                          selectTimeIndex = null;
                        } else {
                          selectTimeIndex = index;
                        }
                      });
                    },
                    child: SelectTime(
                      child: kTimeList[index].toLowerCase(),
                      borderColour: (selectTimeIndex == index)
                          ? selectedTimeBorderColour
                          : timeBorderColour,
                      colour: (selectTimeIndex == index)
                          ? selectedTimeTextColour
                          : timeTextColour,
                      family: (selectTimeIndex == index)
                          ? selectedTimeFamily
                          : timeFamily,
                    ),
                  );
                }),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(width: 30),
                  UIButton(
                    text: 'Book',
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Days extends StatefulWidget {
  final Dates date;
  final int index;
  final Color colour;
  Days(
      {super.key,
      required this.date,
      required this.index,
      required this.colour});

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      height: 72,
      width: 63,
      decoration: BoxDecoration(
        border: Border.all(color: widget.colour, width: 2),
        // border: Border.all(color: Color(0xFFCDCDCD)),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            '${widget.date.dateLists[widget.index]} \n ${widget.date.weekDays[widget.index]}',
            style: TextStyle(
                fontFamily: 'Raleway-SemiBold',
                fontSize: 20,
                color: widget.colour,
                height: 1.4),
          ),
        ],
      ),
    );
  }
}

class AvalabilityHours extends StatefulWidget {
  const AvalabilityHours({super.key});

  @override
  State<AvalabilityHours> createState() => _AvalabilityHoursState();
}

class _AvalabilityHoursState extends State<AvalabilityHours> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFCDCDCD),
        ),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          '10:00 am',
          style: TextStyle(
              fontFamily: 'Raleway-Regular',
              fontSize: 20,
              color: Color(0xFF7A7A7A),
              height: 1.4),
        ),
      ),
    );
  }
}
