import 'frequency.dart';

class Contact {
  String name;
  int pictureID;
  Frequency frequency;
  List<DateTime> upcomingCallTimes;
  List<DateTime> missedCallTimes;
  List<DateTime> completedCallTimes;

  /// Creates a contact with a name and frequency.
  Contact(this.name, this.frequency)
      : pictureID = 0,
        upcomingCallTimes = [],
        missedCallTimes = [],
        completedCallTimes = [];
}
