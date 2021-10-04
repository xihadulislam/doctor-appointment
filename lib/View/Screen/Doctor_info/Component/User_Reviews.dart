
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../constant.dart';


class UserReviews extends StatelessWidget {
  const UserReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,int reviewIndex){
          return Container(
            height: 120,
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration:  BoxDecoration(
              color: kPrimaryColorsLight.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              color: kProfileIconBkColor,
                              borderRadius: BorderRadius.all(Radius.circular(25))),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/image/profile_lode.gif',
                              image:
                              "https://cdn-icons-png.flaticon.com/512/3304/3304567.png",
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children:  [
                            Container(
                              alignment: Alignment.centerLeft,
                                width: 80,
                                child: const Text("Olivia jk",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),)),
                            Container(
                                alignment: Alignment.centerLeft,
                                width: 80,
                                child: const Text("1 Day Ago",  overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14,color: Colors.black38,fontWeight: FontWeight.w500),)),

                          ],
                        )
                      ],
                    ),
                    Row(

                      children: const [
                        Icon(Icons.star, size: 18, color: Colors.orangeAccent),
                        SizedBox(width: 6),
                        Text("4.9",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 12),
                  child: const Text("Quisque velit nisi, pretium ut lacinia in, elementum id enim. Sed porttitor lectus nibh.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: Colors.black54,fontWeight: FontWeight.w500),),
                )

              ],
            ),

          );
        },
      ),

    );
  }
}

