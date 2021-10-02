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
  DepartmentController departmentController = Get.put(DepartmentController());
  PopularDoctorController popularDoctorController = Get.put(PopularDoctorController());
  final ScrollController _scrollController = ScrollController();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorsWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                    style: TextStyle(color: kTextColorsBlack, fontSize: 22, fontWeight: FontWeight.w600),
                  )),
                  Container(
                    height: 35,
                    width: 35,
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                        color: kProfileIconBkColor, borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/profile_lode.gif',
                        image: "https://cdn-icons-png.flaticon.com/512/2922/2922510.png",
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image:
                            const DecorationImage(image: AssetImage("assets/images/clinic_back.png"), fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColors.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 12,
                            offset: const Offset(2, 6), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.symmetric(horizontal: 10),
                                  child: const Text(
                                    "Clinic Visit",
                                    style: TextStyle(color: kColorsWhite, fontWeight: FontWeight.w600, fontSize: 18),
                                  )),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  child: const Text(
                                    "Make an Appointment",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: kTextColors, fontWeight: FontWeight.w400, fontSize: 12),
                                  )),
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
                                    color: kColorsWhite, borderRadius: BorderRadius.all(Radius.circular(30))),
                                child: SvgPicture.asset("assets/images/plus.svg"),
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
                        height: 140,
                        decoration: BoxDecoration(
                          color: kColorsWhite,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: const Offset(2, 6), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: const Text(
                                      "Home Visit",
                                      style:
                                          TextStyle(color: kTextColorsBlack, fontWeight: FontWeight.w600, fontSize: 18),
                                    )),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                    child: const Text(
                                      "Call the Doctor Home",
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          TextStyle(color: kColorsGray300, fontWeight: FontWeight.w400, fontSize: 12),
                                    )),
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
                                      color: kTextColors, borderRadius: BorderRadius.all(Radius.circular(30))),
                                  child: const Icon(
                                    Icons.home,
                                    color: kPrimaryColors,
                                  ),
                                )),
                          ],
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Department",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 40,
                child: GetBuilder<DepartmentController>(builder: (controller) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.deptNameList.length,
                    itemBuilder: (context, int indexDept) {
                      return Container(
                        height: 25,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: kPrimaryColors.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(Radius.circular(7)),
                        ),
                        child: Text(
                          controller.deptNameList[indexDept].name,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      );
                    },
                  );
                }),
              ),
              const SizedBox(height: 24),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Popular Doctor",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                color: kColorsWhite,
                child: GetBuilder<PopularDoctorController>(builder: (popularController) {
                  return StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 24.0,
                    staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                    itemCount: popularController.popularDoctorList.length,
                    itemBuilder: (context, int indexPopular) {
                      return InkWell(
                        onTap: () {
                          Get.to(const DoctorInfoScreen());
                        },
                        child: Container(
                          height: 190,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: kColorsWhite,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 34,
                                offset: const Offset(2, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Container(
                                height: 65,
                                width: 65,
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                    color: kProfileIconBkColor, borderRadius: BorderRadius.all(Radius.circular(30))),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  child: FadeInImage.assetNetwork(
                                    placeholder: 'assets/images/profile_lode.gif',
                                    image: popularController.popularDoctorList[indexPopular].image,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                popularController.popularDoctorList[indexPopular].name,
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                popularController.popularDoctorList[indexPopular].depName,
                                style: const TextStyle(fontSize: 12),
                              ),
                              const SizedBox(height: 8),
                              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                const Icon(Icons.star, size: 18, color: Colors.orangeAccent),
                                const SizedBox(width: 6),
                                Text(
                                  popularController.popularDoctorList[indexPopular].avgRating,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ]),
                              const Spacer(flex: 2,),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
