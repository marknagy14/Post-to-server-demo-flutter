import 'package:assignment_fourteen/cubit/todo_cubit.dart';
import 'package:assignment_fourteen/models/todo_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {

  var todo = TextEditingController();
  var userId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit,TodoState>(builder: (context,state){
      var cubit = context.read<TodoCubit>();
      return Scaffold(
        appBar: AppBar(
          title: Text("Todo Screen"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: userId,
                  decoration: InputDecoration(labelText: "user id",suffixIcon: Icon(Icons.person)),

                ),
                TextFormField(
                  controller: todo,
                  decoration: InputDecoration(labelText: "todo",suffixIcon: Icon(Icons.edit_note_sharp)),
                ),

                ElevatedButton(
                  onPressed: () {
                    cubit.createTodo(TodoModel(id: 0, todo:todo.text, completed:true, userId: int.parse(userId.text)));

                  },
                  child: Text(
                    "add todo",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                )
              ],
            ),
          ),
        ),
      );


    });
  }
}
