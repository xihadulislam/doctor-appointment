// ignore_for_file: file_names

import 'package:get/get.dart';

class ScheduleController extends GetxController{

  var dataChange1=true.obs;
  var dataChange2=false.obs;
  var dataChange3=false.obs;

  setDataChangetrue1(){
    dataChange2(false);
    dataChange3(false);
    dataChange1(true);
    update();

  }
  setDataChangeTrue2(){
    dataChange2(true);
    dataChange3(false);
    dataChange1(false);
    update();

  }
  setDataChangeTrue3(){
    dataChange2(false);
    dataChange3(true);
    dataChange1(false);
    update();

  }


}