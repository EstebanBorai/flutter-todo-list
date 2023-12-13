class Todo {
  final String id;
  bool completed;
  String content;

  Todo({
    required this.id,
    required this.completed,
    this.content = '',
  });
}
