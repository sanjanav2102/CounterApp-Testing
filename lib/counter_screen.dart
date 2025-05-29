import 'package:flutter/material.dart';

import 'counter.dart';


class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final Counter counter = Counter();
  //function is initialized.
  //
  void increment(){
    setState(() {
      counter.increment();
    });
  }
  void decrement(){
    setState(() {
      counter.decrement();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App',
         ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child:Text('Counter: ${counter.count}',
          style: TextStyle(
            fontSize: 30,
          ),),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: decrement,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),

    );
  }
}
