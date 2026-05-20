class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class StudentMemeber {
  String name;
  String major;
  String dob;
  String fatherName;
  String montherName;

  StudentMemeber({
    required this.name,
    required this.major,
    this.fatherName = "",
    this.montherName = "",
    required this.dob,
  });
}
