import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/name.dart';
import 'provider/name.dart';
// import 'provider/counter.dart';
// import 'package:provider/provider.dart';
// import 'screen/counter.dart';

void main() {
  runApp(const MyApp());
}

//NAME provider_example
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NameState(),
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: Name()),
    );
  }
}

// Counter APP PROVIDER EXAMPLE
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => MyAppState(),
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: CountExample(),
//       ),
//     );
//   }
// }
