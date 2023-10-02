
import 'package:get/get.dart';

class CounterController extends GetxController{

  RxInt counter = 1.obs;
  incrementCounter(){
    counter.value++;
  }

}

class ExampleTwoController extends GetxController{

  RxDouble opacity = .4.obs;

  setOpacity(double  value){
    opacity.value= value;
  }
}

