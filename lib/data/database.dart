import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  final _myBox = Hive.box('myBox');

  void createData() {
    todoList = [
      ["Make you happy", false],
      ["Keep you safe", false],
      ['Take you on tours', false],
      ["Eat dinner togehter", false],
      ["Watch you smile", true],
      ["grow old together", false]
    ];
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
