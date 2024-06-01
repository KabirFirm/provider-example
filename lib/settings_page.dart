import 'package:flutter/material.dart';
import 'timer_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              context.read<TimerProvider>().setTimer(2);
            },
            child: Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: context.watch<TimerProvider>().getTimer(),
                  activeColor: Colors.green,
                  onChanged: (val) {
                    // change timer value
                    context.read<TimerProvider>().setTimer(val!);
                  },
                ),
                const Text('Two Seconds')
              ],
            ),
          ),
          InkWell(
            onTap: (){
              context.read<TimerProvider>().setTimer(3);
            },
            child: Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: context.watch<TimerProvider>().getTimer(),
                  activeColor: Colors.green,
                  onChanged: (val) {
                    // change timer value
                    context.read<TimerProvider>().setTimer(val!);
                  },
                ),
                const Text('Three Seconds')
              ],
            ),
          ),
          InkWell(
            onTap: (){
              context.read<TimerProvider>().setTimer(4);
            },
            child: Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: context.watch<TimerProvider>().getTimer(),
                  activeColor: Colors.green,
                  onChanged: (val) {
                    // change timer value
                    context.read<TimerProvider>().setTimer(val!);
                  },
                ),
                const Text('Four Seconds')
              ],
            ),
          ),
          InkWell(
            onTap: (){
              context.read<TimerProvider>().setTimer(6);
            },
            child: Row(
              children: [
                Radio(
                  value: 6,
                  groupValue: context.watch<TimerProvider>().getTimer(),
                  activeColor: Colors.green,
                  onChanged: (val) {
                    // change timer value
                    context.read<TimerProvider>().setTimer(val!);
                  },
                ),
                const Text('six Seconds')
              ],
            ),
          ),
          InkWell(
            onTap: (){
              context.read<TimerProvider>().setTimer(10);
            },
            child: Row(
              children: [
                Radio(
                  value: 10,
                  groupValue: context.watch<TimerProvider>().getTimer(),
                  activeColor: Colors.green,
                  onChanged: (val) {
                    // change timer value
                    context.read<TimerProvider>().setTimer(val!);
                  },
                ),
                const Text('Ten Seconds')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
