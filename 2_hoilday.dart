class Holiday {
  String name;
  int numOfDay;
  String month;

  Holiday(this.name, this.numOfDay, this.month);

  bool inSameMonth(Holiday h1, Holiday h2) {
    if (h1.month == h2.month) {
      return true;
    } else {
      return false;
    }
  }

  double avgDate(List<Holiday> holidays) {
    int sum = 0;
    for (int i = 0; i < holidays.length; i++) {
      sum += holidays[i].numOfDay;
    }
    return sum / holidays.length;
  }
}

void main() {
  Holiday h1 = Holiday("Independence Day", 4, "July");
  Holiday h2 = Holiday("Eid", 10, "July");

  print("In same month? ${h1.inSameMonth(h1, h2)}");

  List<Holiday> list = [h1, h2];
  print("Average day: ${h1.avgDate(list)}");
}
