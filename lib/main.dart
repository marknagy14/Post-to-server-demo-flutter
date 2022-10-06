import 'package:assignment_fourteen/cubit/todo_cubit.dart';
import 'package:assignment_fourteen/view/screens/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(providers: [BlocProvider(create: (context)=>TodoCubit())], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:  TodoScreen(),
    );
  }
}

