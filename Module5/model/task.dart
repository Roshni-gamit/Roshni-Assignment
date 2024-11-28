class Task {
  int? id;
  String name;
  String description;
  DateTime dateTime;
  String priority;
  bool isCompleted;

  Task({
    this.id,
    required this.name,
    required this.description,
    required this.dateTime,
    required this.priority,
    this.isCompleted = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'dateTime': dateTime.toIso8601String(),
      'priority': priority,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  static Task fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      dateTime: DateTime.parse(map['dateTime']),
      priority: map['priority'],
      isCompleted: map['isCompleted'] == 1,
    );
  }
}