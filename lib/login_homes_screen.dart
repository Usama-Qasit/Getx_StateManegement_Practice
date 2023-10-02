import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/Login_home_screen_class.dart';

    class LoginHomeScreen extends StatefulWidget {
      const LoginHomeScreen({Key? key}) : super(key: key);

      @override
      State<LoginHomeScreen> createState() => _LoginHomeScreenState();
    }

    class _LoginHomeScreenState extends State<LoginHomeScreen> {

      LoginController controller =Get.put(LoginController());

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Getx '),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller.emailController.value,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                TextFormField(
                  controller: controller.passwordoController.value,
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                ),
                SizedBox(height: 50,),
               Obx(() {
                 return  InkWell(
                   onTap: (){
                     controller.LoginApi();
                   },
                   child:controller.loading.value ? CircularProgressIndicator() :Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(30),
                     ),
                     child: Center(child: Text('Login',style: TextStyle(color: Colors.white),)),
                   ),
                 );
               })
              ],
            ),
          ),
        );
      }
    }
