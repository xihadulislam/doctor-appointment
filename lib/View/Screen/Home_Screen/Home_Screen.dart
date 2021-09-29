// ignore_for_file: file_names

import 'package:doctor_appointment/Controller/Depaetment_Name_Controller.dart';
import 'package:doctor_appointment/Controller/Popular_Doctor_Controller.dart';
import 'package:doctor_appointment/View/Screen/Doctor_info/Doctor_info_and_booking_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constant.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  DepartmentController departmentController=Get.put(DepartmentController());
  PopularDoctorController popularDoctorController=Get.put(PopularDoctorController());
  final ScrollController _scrollController=ScrollController();
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kTextColorsBlack);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Text(
                    "SattaBroto chowdhury",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: kTextColorsBlack,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  )),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: kProfileIconBkColor,
                        borderRadius:
                            BorderRadius.all(Radius.circular(30))),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/image/profile_lode.gif',
                        image:
                            "https://cdn-icons-png.flaticon.com/512/2922/2922510.png",
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 150,
                        decoration:  BoxDecoration(

                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          image: const DecorationImage(
                            image: AssetImage("assets/image/clinic_back.png"),
                            fit: BoxFit.cover
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColors.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 115,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:  [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 10),
                                    child: const Text("Clinic Visit",style: TextStyle(color: kColorsWhite,fontWeight: FontWeight.w600,fontSize: 18),)),
                                Container(

                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                    child: const Text("Make an Appointment",  overflow: TextOverflow.ellipsis,style: TextStyle(color: kTextColors,fontWeight: FontWeight.w400,fontSize: 15),)),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                            Positioned(
                                top: 15,
                                left: 10,
                                child: Container(
                              height: 45,
                              width: 45,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: kColorsWhite,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: SvgPicture.asset("assets/image/plus.svg"),
                            )),
                          ],
                        ),
                      ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 150,
                        decoration:  BoxDecoration(
                            color: kColorsWhite,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 115,
                              offset: const Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),


                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:  [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 10,),
                                    child: const Text("Home Visit",style: TextStyle(color: kTextColorsBlack,fontWeight: FontWeight.w600,fontSize: 18),)),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                                    child: const Text("Call the Doctor Home",  overflow: TextOverflow.ellipsis,style: TextStyle(color: kColorsGray300,fontWeight: FontWeight.w400,fontSize: 15),)),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                            Positioned(
                                top: 15,
                                left: 10,
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      color: kTextColors,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                                  child: const Icon(Icons.home,color: kPrimaryColors,),
                                )),
                          ],
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text("All Department Name",overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),),
              ),
              const SizedBox(
                height: 15,
              ),
             SizedBox(
               height: 40,
               child: GetBuilder<DepartmentController>(
                 builder: (controller) {
                   return ListView.builder(
                     shrinkWrap: true,
                     scrollDirection: Axis.horizontal,
                     itemCount: controller.deptNameList.length,
                     itemBuilder: (context,int indexDept){
                       return Container(
                         height: 25,
                         alignment: Alignment.center,
                         padding: const EdgeInsets.all(10),
                         margin: const EdgeInsets.only(right: 10),
                         decoration:  BoxDecoration(
                           color: kPrimaryColors.withOpacity(0.1),
                           borderRadius: const BorderRadius.all(Radius.circular(7)),
                         ),
                         child: Text(controller.deptNameList[indexDept].name,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                       );
                     },
                   );
                 }
               ),
             ),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text("Popular Doctor",overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                  child: Container(
                    color: kColorsWhite,
                    child: GetBuilder<PopularDoctorController>(
                builder: (popularController) {
                  return StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    crossAxisSpacing: 20.0,
                    staggeredTileBuilder: (index)=>const StaggeredTile.fit(1),
                    itemCount: popularController.popularDoctorList.length,
                    itemBuilder: (context,int indexPopular){
                      return InkWell(
                        onTap: (){
                          Get.to(const DoctorInfoScreen());
                        },
                        child: Container(
                          height: 180,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration:  BoxDecoration(
                            color: kColorsWhite,
                            borderRadius: const BorderRadius.all(Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                    color: kProfileIconBkColor,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                                child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                                  child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/image/profile_lode.gif',
                                    image: popularController.popularDoctorList[indexPopular].image,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(popularController.popularDoctorList[indexPopular].name,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(popularController.popularDoctorList[indexPopular].depName,style: const TextStyle(fontSize: 14,),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(popularController.popularDoctorList[indexPopular].avgRating,style: const TextStyle(fontSize: 14,),),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Icon(Icons.star,size: 16,color: Colors.orangeAccent,),
                                ],
                              ),


                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              ),)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
