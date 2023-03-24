import 'package:counter_with_getx/counter_with_getx/counter_page_getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyAppGetX extends StatelessWidget {
  const MyAppGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterWithGetxPage());
  }
}
