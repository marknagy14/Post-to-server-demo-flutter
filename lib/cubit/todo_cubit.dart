import 'package:assignment_fourteen/models/todo_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());

  Future createTodo(TodoModel todo) async{
    var response =  await Dio().post("https://dummyjson.com/todos/add",data:todo.toJson());
    print(response.data);

    
  }
}
