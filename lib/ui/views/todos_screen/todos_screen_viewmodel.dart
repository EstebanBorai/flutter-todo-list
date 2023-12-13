import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:todo/app/locator.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/services/todos.service.dart';

class TodosScreenViewModel extends ReactiveViewModel {
  final _firstTodoFocusNode = FocusNode();
  final _todosService = locator<TodosService>();

  List<Todo> get todos => _todosService.todos;

  void newTodo() {
    _todosService.newTodo();
    _firstTodoFocusNode.requestFocus();
    notifyListeners();
  }

  void removeTodo(String id) {
    _todosService.removeTodo(id);
    notifyListeners();
  }

  void toggleStatus(String id) {
    _todosService.toggleStatus(id);
    notifyListeners();
  }

  void updateTodoContent(String id, String text) {
    _todosService.updateTodoContent(id, text);
    notifyListeners();
  }

  FocusNode? getFocusNode(String id) {
    final index = todos.indexWhere((todo) => todo.id == id);
    return index == 0 ? _firstTodoFocusNode : null;
  }
}
