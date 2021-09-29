// ignore_for_file: file_names, prefer_const_constructors


import 'package:doctor_appointment/Controller/Schedule_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant.dart';

class ScheduleScreen extends StatelessWidget {
  ScheduleController scheduleController=Get.put(ScheduleController());
   ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text("Schedule", style: TextStyle(
                    color: kTextColorsBlack,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 20,),
              GetBuilder<ScheduleController>(
                builder: (controller) {
                  return Container(
                    height: 45,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: kScheduleRowBackColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration:  BoxDecoration(
                        // ignore: unrelated_type_equality_checks
                          color:  controller.dataChange1==false?kScheduleRowBackColor:kPrimaryColors,
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextButton(
                        onPressed: (){
                          controller.setDataChangetrue1();
                        },
                        // ignore: unrelated_type_equality_checks
                        child:   Text("UpComing",style: TextStyle(color: controller.dataChange1==false?kScheduleTextColor:kColorsWhite),),
                      ),
                    ),
                        Container(color: kScheduleRowColor,width: 2,margin: const EdgeInsets.only(top: 5,bottom: 5),),
                        Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration:  BoxDecoration(
                            // ignore: unrelated_type_equality_checks
                              color: controller.dataChange2==false?kScheduleRowBackColor:kPrimaryColors ,
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: TextButton(
                            onPressed: (){
                              controller.setDataChangeTrue2();
                            },
                            // ignore: unrelated_type_equality_checks
                            child:   Text("Completed",style: TextStyle(color: controller.dataChange2==false?kScheduleTextColor:kColorsWhite),),
                          ),
                        ),
                        Container(color: kScheduleRowColor,width: 2,margin: const EdgeInsets.only(top: 5,bottom: 5),),
                        Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration:  BoxDecoration(
                            // ignore: unrelated_type_equality_checks
                              color:  controller.dataChange3==false?kScheduleRowBackColor:kPrimaryColors,
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                          ),
                          child: TextButton(
                            onPressed: (){
                              controller.setDataChangeTrue3();
                            },
                            // ignore: unrelated_type_equality_checks
                            child:   Text("Canceled",style: TextStyle(color: controller.dataChange3==false?kScheduleTextColor:kColorsWhite),),
                          ),
                        ),
                      ],
                    ),

                  );
                }
              ),
              const SizedBox(height: 25,),
              Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context,int idex){
                      return Container(
                        height: 155,
                        margin: const EdgeInsets.symmetric(vertical: 5),
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
                          children: [
                            Container(
                             margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Dr.Olivia",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Cardiologists",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                                  ],
                                ),
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
                                        image: "https://cdn-icons-png.flaticon.com/512/3304/3304567.png",
                                      ),
                                    ),
                                  ),
                              ],),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3,left: 20,right: 20),
                              color: kScheduleTextColor,
                              height: 1,
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RichText(
                                  text: TextSpan(

                                    children: const [
                                      WidgetSpan(
                                        child: Icon(CupertinoIcons.calendar, size: 17),
                                      ),

                                      TextSpan(
                                        text: "   29/9/2020",
                                        style: TextStyle(color: kTextColorsBlack)


                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(

                                    children: const [
                                      WidgetSpan(
                                        child: Icon(CupertinoIcons.clock_fill, size: 17),
                                      ),

                                      TextSpan(
                                          text: "   10:35 PM",
                                          style: TextStyle(color: kTextColorsBlack)


                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(

                                    children: const [
                                      WidgetSpan(
                                        child: Icon(Icons.adjust_rounded, size: 17,color: Colors.green,),
                                      ),

                                      TextSpan(
                                          text: "   29/9/2020",
                                          style: TextStyle(color: kTextColorsBlack)


                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                            const SizedBox(height: 7,),

                            Container(
                              margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: kTextColors,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                        child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                  ),
                                  ),
                                  SizedBox(width: 10,),

                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColors,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                      ),
                                      child: Text("Reschedule",
                                      style: TextStyle(color: kColorsWhite,fontWeight: FontWeight.w700,fontSize: 18),),
                                    ),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },

                  )),
              const SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}
