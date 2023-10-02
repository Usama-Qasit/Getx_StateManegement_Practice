import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';


class LoginController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordoController = TextEditingController().obs;

  RxBool loading = false.obs;

  void LoginApi()async{
    loading.value = true;
    try{
      final response = await post(Uri.parse('https://reqres.in/api/login'),

          body: {
            'email':emailController.value.text,
            'password':passwordoController.value.text,
          });

      var data = jsonDecode(response.body);

      if(response.statusCode == 200){
        loading.value = false;
        Get.snackbar('Login Sucessful ', 'Congratulation');

      }else{
        loading.value = false;
        Get.snackbar('Login Failed', 'Error');
      }

    }catch(e){
      loading.value = false;
      Get.snackbar('Exception', e.toString());

    }


  }



}