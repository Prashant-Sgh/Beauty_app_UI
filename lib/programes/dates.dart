class Dates {
  DateTime now = DateTime.now();
  List<int> dateLists = [];
  List<String> weekDays = [];

  List<String> week = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  List<String> month = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  String getMonth() {
    return month[now.month - 1];
  }

  void addAllDays() {
    for (int i = 0; i < (31 - now.day); i++) {
      dateLists.add((now.add(Duration(days: i)).day));
      weekDays.add(week[(now.add(Duration(days: i)).weekday) - 1]);
    }
  }

  void addAllWeekDays() {}
}
