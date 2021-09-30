// ignore_for_file: file_names

import 'package:doctor_appointment/Model/Dept_Name_Model.dart';
import 'package:get/get.dart';

class DepartmentController extends GetxController {
  var isLoading = false;

  setIsLoadingFalse() {
    isLoading = false;
    update();
  }

  setIsLoadingTrue() {
    isLoading = true;
    update();
  }

  List<DeptName> deptNameList = <DeptName>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchDeptNameList();
  }

  void fetchDeptNameList() {
    var allOrder = [
      DeptName(id: 1, name: "Cardiologists"),
      DeptName(id: 2, name: "Endocrinologists"),
      DeptName(id: 3, name: "Gastroenterologists"),
      DeptName(id: 4, name: "Nephrologists"),
      DeptName(id: 5, name: "Neurologists"),
      DeptName(id: 6, name: "Psychiatrists"),
      DeptName(id: 7, name: "Oncologists"),
      DeptName(id: 8, name: "Obstetrician"),
    ];

    deptNameList.addAll(allOrder);
    setIsLoadingTrue();
  }
}
