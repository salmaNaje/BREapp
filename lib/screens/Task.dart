import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task')),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: number.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile();
          }),
    );
  }
}
