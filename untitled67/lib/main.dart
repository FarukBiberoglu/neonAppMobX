import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled67/counter_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  final CounterStore counterStore = CounterStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MobX Counter"),
      ),
      body: Column(
        children: [
          Center(
            child: Observer(
              builder: (_) => Text(
                'Counter: ${counterStore.counter}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          Observer(
              builder: (_)=> Text('Counter: ${counterStore.counter}',style: TextStyle(
                fontSize: 20,
              ),)),
          ElevatedButton(onPressed: (){
            counterStore.sayacAzalt();
          },
              child: Text('Sayaç Azalt'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterStore.increment,
        child: const Icon(Icons.add),
      ),

    );
  }
}
