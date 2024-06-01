import 'dart:async';
import 'package:flutter/material.dart';
import 'settings_page.dart';
import 'timer_provider.dart';
import 'package:provider/provider.dart';

// global timer
Timer myTimer = Timer.periodic(const Duration(seconds: 1), (timer) {});


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          apiCallTimer(context.watch<TimerProvider>().getTimer()),
          const SizedBox(height: 30.0,),
          // go to settings page
          Center(
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SettingsPage())),
                child: const Text('Settings Page', style: TextStyle(color: Colors.white),)
            ),
          )
        ],
      ),
    );
  }
}

Widget apiCallTimer(int duration) {
  if(myTimer.isActive) {
    print('timer cancel');
    myTimer.cancel();
  }
  myTimer = Timer.periodic(Duration(seconds: duration), (timer) {
    print("call API after $duration seconds");
    // call api
  });
  return Text('Calling API after $duration seconds');
}
