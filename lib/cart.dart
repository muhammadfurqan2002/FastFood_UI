import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class CART extends StatefulWidget {
  const CART({super.key});

  @override
  State<CART> createState() => _CARTState();
}

class _CARTState extends State<CART> {



  CartWidget(h,w,path,text){
    return Padding(
      padding:const  EdgeInsets.only(top: 20),
      child: Container(
        margin:const EdgeInsets.only(left: 10,right:10),
        width: w,
        height: h*0.18,
        decoration: BoxDecoration(
            // color: Colors.green,
            borderRadius: BorderRadius.circular(40)
        ),
        child: Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 1,
              left: w*.10,
              bottom: 0,
              right: 2,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: w*.85,
                  height: h*0.18,
                  decoration:BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 70,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: h*0.01,),
                              Text(text,style:const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                              const SizedBox(height: 5,),
                              const Text("Extra Cheese",style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54
                              ),),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$500",style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color:Colors.red.shade500
                                  ),),
                                  Row(
                                    children: [
                                      Container(
                                        height:25 ,
                                        width: 25,
                                        decoration:BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                        child:Center(child:Icon(CupertinoIcons.plus,size: 20,color: Colors.red.shade500,),),
                                      ),
                                      SizedBox(width: w*0.03,),
                                      const  Text("2",style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      SizedBox(width: w*0.03,),
                                      Container(
                                        height:25 ,
                                        width: 25,
                                        decoration:BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(60),
                                        ),
                                        child:Center(child:Icon(CupertinoIcons.minus,size: 20,color: Colors.red.shade500,),),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: h*0.038,
                left:0,
                child: Center(child: Image.asset(path,height: 80,width: 90,))
            ),

          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.of(context).size.height;
    final w=MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        // title: const Icon(Icons.arrow_back,size: 30,weight:2 ,color: Colors.black,),
        // toolbarHeight: 50,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h*0.01,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your Cart",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),),
        
                Row(
                  children: [
                    Text("Total: ",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("\$7000",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,color: Colors.red
                    ),),
                  ],
                )
        
              ],
            ),
          ),
            Column(
              children: [
                CartWidget(h, w,"images/FastFood/kfc_hero.png","1 x Break Fast"),
                const SizedBox(height: 5,),
                CartWidget(h, w,"images/FastFood/dominos_pizza_hero.png","1 x Kfc Deal"),
                const SizedBox(height: 5,),
                CartWidget(h, w,"images/FastFood/subway_hero.png","1 x Mc Deal"),
                const SizedBox(height: 5,),
                CartWidget(h, w,"images/FastFood/sprite.png","1 x Sprite"),
                const SizedBox(height: 5,),
                CartWidget(h, w,"images/FastFood/starbucks_hero.png","1 x Hero Deal"),
                const SizedBox(height: 5,),
        
              ],
            )
        
          ],
        ),
      ),
    );
  }
}
