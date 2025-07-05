import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/counter.dart';
import 'package:providerpractice/screen/example.dart';
import 'package:providerpractice/provider/examplepro.dart';
import 'package:providerpractice/screen/example.dart';
// import 'package:providerpractice/screen/todoscr.dart';
// import 'package:providerpractice/provider/todopro.dart';
import 'screen/name.dart';
import 'provider/name.dart';
import 'screen/tile.dart';
import 'provider/tilepro.dart';
// import 'provider/counter.dart';
// import 'package:provider/provider.dart';
// import 'screen/counter.dart';

void main() {
  runApp(const MyApp());
}

//example of Provider with Slider Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyAppState()),
        ChangeNotifierProvider(create: (_) => NameState()),
        ChangeNotifierProvider(create: (_) => Examplepro()),
        ChangeNotifierProvider(
          create: (_) => FavProvider(),
        ), // ExamplePro is the Class name for Provider
        // Add more providers here
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: TilesPro()),
    );
  }
}

//Todo List Provider Example
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => Todopro(), // Todopro is the Class name for Provider
//       child: MaterialApp(debugShowCheckedModeBanner: false, home: TodoApp()),
//     );
//   }
// }

//NAME provider_example
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => NameState(),
//       child: const MaterialApp(debugShowCheckedModeBanner: false, home: Name()),
//     );
//   }
// }

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
