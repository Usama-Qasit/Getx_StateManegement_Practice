import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/Example_One_counter.dart';
import 'package:getx/Example_Two_Opacity.dart';
import 'package:getx/Image_picker.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/login_homes_screen.dart';

import 'Favourite_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.purple
        )
      ),
      home:LoginHomeScreen(),
    );
  }
}

