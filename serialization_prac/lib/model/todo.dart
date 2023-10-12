// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      userId: map["userId"],
      id: map["id"],
      title: map["title"],
      completed: map["completed"],
    );
  }

  @override
  String toString() {
    // return 'Todo(userId: $userId, id: $id, title: $title, completed: $completed)';
    return 'Todo($title)';
  }
}
