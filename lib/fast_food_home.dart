import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'cart.dart';




class FastFoodHome extends StatelessWidget {
  const FastFoodHome({super.key});

  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: w*.03,right:w*.03 ,top: h*.06),
        child: SizedBox(
          child: Column(
            children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Stack(
                             alignment: Alignment.center,
                             children: [
                               Container(
                                 height: w*.15,
                                 width: w*.15,
                                 decoration:const BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.red,
                                 ),
                               )
                             ],
                           ),
                           SizedBox(width: w*.02,),
                           const Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Nearby Outlet",style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 15,
                                 color: Colors.black54
                               ),),
                               Text("Zindabazar, Sylhet",style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black87
                               ),),
                             ],
                           )
                         ],
                      ),
                      const Icon(Icons.shopping_bag_outlined,size: 30,)
                    ],
                  ),
              SizedBox(height: h*.02,),
              Container(
                width: w,
                height: h*.07,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: w*.25,
                        height: h*.055,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:const Center(child: Text("Single",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),),),
                      ),
                      Container(
                        width: w*.25,
                        height: h*.055,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:const Center(child: Text("Combo",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black54
                        ),),),
                      ),
                      Container(
                        width: w*.25,
                        height: h*.055,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:const Center(child: Text("Bucket",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black54
                        ),),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:h*.02,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple.shade50,
                ),
                child:Padding(
                  padding: EdgeInsets.symmetric(horizontal:w*.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("TUESDAY DEAL",style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            letterSpacing: 2
                          ),),
                          // SizedBox(height: 4,),
                          Text("20pcs Chicken\nBucket",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                          ),),
                          SizedBox(height: 15,),
                          Text("9AM - 10PM",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),),

                        ],
                      ),
                      SizedBox(
                        height:h*.15,
                        width: w*.3,
                        // color: Colors.red,
                        child:Image.asset("images/FastFood/value_meal1.png",fit: BoxFit.fill,) ,
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: h*.02,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    // color: Colors.red,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.height,
                    child:Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            homePageItems(title:"Fried Chicken", path:"images/FastFood/snacks1.png", price:"\$20",context: context),
                            homePageItems(title:"Chicken Popcorn", path:"images/FastFood/shake_shack_hero.png", price:"\$30",context: context)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            homePageItems(title:"Breakfast Deal", path:"images/FastFood/breakfast1.png", price:"\$20",context: context),
                            homePageItems(title:"Chicken Popcorn", path:"images/FastFood/burger3.png", price:"\$30",context: context)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
  homePageItems({required String title,required String path,required String price,required context}){
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return  Padding(
      padding:const EdgeInsets.only(top: 10,left: 10,right: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CART()));
        },
        child: SizedBox(
          // color: Colors.black,
          height: h*0.30,
          width: w*.41,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top:50,
                child: Container(
                  height:h*.22,
                  width:w*.4,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
               Positioned(
                top: 110,
                child: SizedBox(
                  child:  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(title,style:const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: h*.003,),
                      const Text("Chicken Patty, Cheese,\nTomato,Lecttuce",textAlign: TextAlign.center,style:TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      )),
                      SizedBox(height: h*.015,),
                      Text(price,style:const TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ))
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  child: Container(
                    // color: Colors.red,
                      height: h*.12,
                      // width: w*.35,
                      child: Image.asset(path,fit: BoxFit.cover,))),
            ],
          ),
        ),
      ),
    );
  }
}




