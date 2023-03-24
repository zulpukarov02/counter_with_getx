import 'package:counter_with_getx/counter_with_getx/counter_controler.dart';
import 'package:counter_with_getx/counter_with_getx/counter_page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterWithGetxPage extends StatelessWidget {
  CounterWithGetxPage({
    super.key,
  });

  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                '${controller.countt}',
                style: Theme.of(context).textTheme.headlineSmall,
              );
            }),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CounterWithGetxPage2()));
                },
                child: Text("knopka1"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.decrement,
        tooltip: '_decrementCounter',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
