import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];
  //reference the hive box
  final _mybox = Hive.box('mybox');

  //run if is the first time ever ooening the app
  void createInitData() {
    todoList = [
      ["this is just an example", false],
    ];
  }

  //load data from db
  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  //update the db
  void updateData() {
    _mybox.put("TODOLIST", todoList);
  }
}
