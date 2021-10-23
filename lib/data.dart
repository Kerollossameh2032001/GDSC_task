import 'package:flutter/material.dart';

class Data with ChangeNotifier{
  List<String> data = [];
  TextEditingController Controller = TextEditingController();

  void AddTask(){
    data.add(Controller.text);
    Controller.text = '';
    notifyListeners();
  }

  int  getIndex(String task){
  return data.indexOf(task);
  }

  void RemoveTask(String task){
    Controller.text = task;
    data.removeAt(getIndex(task));
    notifyListeners();
  }
}