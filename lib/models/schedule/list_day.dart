enum ListDay { monday, tuesday, wednesday, thursday, 
              friday, saturday, sunday, other, unknown }

String listDayToString(ListDay day) {
  switch (day) {
    case ListDay.monday:
      return 'monday';
      case ListDay.tuesday:
      return 'tuesday';
      case ListDay.wednesday:
      return 'wednesday';
      case ListDay.thursday:
      return 'thursday';
      case ListDay.friday:
      return 'friday';
      case ListDay.saturday:
      return 'saturday';
      case ListDay.sunday:
      return 'sunday';
      case ListDay.other:
      return 'other';
      case ListDay.unknown:
      return 'unknown';
    default:
      return '';
  }
}