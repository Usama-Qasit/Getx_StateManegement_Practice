import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';


class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child:Obx(()=> Text(controller.counter.toString(),style: TextStyle(fontSize: 60),)),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.incrementCounter();
      },
      ),
    );
  }
}
