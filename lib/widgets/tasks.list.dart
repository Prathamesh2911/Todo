import 'package:flutter/material.dart';
import 'package:todo/widgets/tasks.tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/module/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (bool? checkBoxState) {
                if (checkBoxState != null) {
                  // setState(() {
                  //   widget.tasks[index].toggleDone();
                  // });
                }
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
