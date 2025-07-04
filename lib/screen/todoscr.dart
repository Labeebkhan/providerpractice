import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Todo Provider Example',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 229, 70, 58),
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              final todoController = TextEditingController();
              return AlertDialog(
                title: Text('Add Todo'),
                content: TextField(
                  controller: todoController,
                  decoration: InputDecoration(labelText: 'Enter your todo'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      // Here you would typically call a method to add the todo
                      // For example:
                      // Provider.of<Todopro>(context, listen: false).addTodo(todoController.text);
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 229, 70, 58),
        shape: CircleBorder(),
      ),
    );
  }
}
