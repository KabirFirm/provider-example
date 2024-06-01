import 'package:flutter/material.dart';
import 'package:misba_task/home_page.dart';
import 'timer_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // for multi provider
    /*return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TimerProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );*/
    // for single provider
    return ChangeNotifierProvider(
      create: (context) => TimerProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}


