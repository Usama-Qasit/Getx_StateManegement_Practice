import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'counter_controller.dart';





class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {


   ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Opacity'),
      ),
      body: Column(
        children: [
          Obx(() =>  Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(exampleTwoController.opacity.value),
          )
          ),
          Obx(() =>Slider(value: exampleTwoController.opacity.value, onChanged: (value){

            exampleTwoController.setOpacity(value);

          })
          )

        ],
      ),
    );
  }
}
