import 'package:flutter/material.dart';

class CounterPage2 extends StatefulWidget {
  CounterPage2(this.count, {super.key});
  int count;

  @override
  State<CounterPage2> createState() => _CounterPage2State();
}

class _CounterPage2State extends State<CounterPage2> {
  int _counter = 0;

  void _decrementCounter() {
    widget.count--;
    setState(() {});
    // log(_counter.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              widget.count.toString(),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(context, widget.count);
              },
              child: Text("knopka 2"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: '_decrementCounter',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
