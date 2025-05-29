import 'package:flutter/material.dart';



class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int  _count = 0;
  final TextEditingController _controller = TextEditingController();

  void _incrementcount() {
    setState(() {
      _count++;
    });
  }
  void _setCustomValue(){
    final value = int.parse(_controller.text);
    setState(() {
      _count =value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App',
         ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Count : ${_count}',key: Key('counterText'),
              style: TextStyle(
                fontSize: 20,
              ),),
              SizedBox(height:10),
              ElevatedButton(onPressed: _incrementcount,
                  key: Key('incrementButton'),
                  child: const Text('Increment')
              ),
              TextField(
                key: Key('inputField'),
              controller: _controller,
              keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Set custom value:'),
              ),
              SizedBox(height:10),
              ElevatedButton(onPressed: _setCustomValue,
                  key: Key('setCustomButton'),
                  child: Text('Set value'))
            ],
          ),
        ),
      ),
    );
  }
}



/*
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
 */