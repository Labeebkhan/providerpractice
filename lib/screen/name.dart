import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/name.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {
    final namecontroller = TextEditingController();
    final nameProvider = Provider.of<NameState>(context);
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Example Name Provider'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<NameState>(
              builder: (context, value, child) {
                return Text(
                  'Name Entered: ' + nameProvider.name,
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            TextField(
              controller: namecontroller,
              decoration: InputDecoration(label: Text('Enter Name')),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<NameState>(
                  context,
                  listen: false,
                ).setName(namecontroller.text);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
