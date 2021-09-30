

// ignore_for_file: file_names

import 'package:doctor_appointment/Model/Popular_Doctor_Model.dart';
import 'package:get/get.dart';

class PopularDoctorController extends GetxController{


  var isLoading = false;

  setIsLoadingFalse() {
    isLoading = false;
    update();
  }

  setIsLoadingTrue() {
    isLoading = true;
    update();
  } 
  
  List<PopularDoctorModel> popularDoctorList=<PopularDoctorModel>[].obs;
  
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchPopularDoctorList();
  }

   fetchPopularDoctorList() async{
    // await Future.delayed(const Duration(seconds: 2));

     var popularDoctorData=[
     PopularDoctorModel(id: 1, name: "Dr.Olivia", depName: "Cardiologists", image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png",avgRating: "4.8"),
     PopularDoctorModel(id: 2, name: "Dr.Charlotte", depName: "Endocrinologists",image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png", avgRating: "4.4"),
     PopularDoctorModel(id: 3, name: "Dr.Amelia", depName: "Cardiologists",image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png", avgRating: "4.2"),
     PopularDoctorModel(id: 4, name: "Dr.Emma", depName: "Endocrinologists",image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png", avgRating: "4.3"),
     PopularDoctorModel(id: 5, name: "Dr.Isabella", depName: "Neurologists",image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png", avgRating: "4.2"),
     PopularDoctorModel(id: 6, name: "Dr.Mia", depName: "Cardiologists",image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png", avgRating: "4.7"),
     PopularDoctorModel(id: 7, name: "Dr.Sophia", depName: "Neurologists", image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png",avgRating: "4.9"),
     PopularDoctorModel(id: 8, name: "Dr.Isabella", depName: "Cardiologists",image:"https://cdn-icons-png.flaticon.com/512/3304/3304567.png", avgRating: "4.2"),
     ];

    popularDoctorList.addAll(popularDoctorData);
   setIsLoadingTrue();
    
   }
  
}