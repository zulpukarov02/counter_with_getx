import 'package:counter_with_getx/counter_with_getx/counter_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterWithGetxPage2 extends StatelessWidget {
  CounterWithGetxPage2({
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: '_incrementCounter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
