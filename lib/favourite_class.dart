
import 'package:get/get.dart';
class FavouriteController extends GetxController {

  RxList<String> fruitList = ['Apple' , 'Orange' , 'Grapes' , 'Mango'].obs ;
  RxList tempFruit = [].obs ;

  addToFavourite(String value){
    tempFruit.add(value);
  }
  removeFromFavourite(String value){
    tempFruit.remove(value);
  }
}