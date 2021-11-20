import 'package:fitness_m/ui/details.dart';
import 'package:fitness_m/ui/widget/lottie_custom.dart';
import 'package:fitness_m/ui/widget/text_custom.dart';
import 'package:fitness_m/utils/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 52.0,
                    ),
                    Lottie.asset(
                      'assets/loading.json',
                      width: 64.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextCustom(
                  text: "Welcome, Body Building \nSelect an option",
                  color: Colors.white,
                  size: 28.0,
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20.0,
                    children: <Widget>[
                      Row(
                        children: [
                          SizedBox(
                            width: 160.0,
                            height: 160.0,
                            child:GestureDetector (
                            onTap: (){
                              Get.to(Details(Pages.SixPack));
                            }
                            ,child:Card(
                              color: Color.fromARGB(255, 21, 21, 21),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    LottieCustom(
                                      lottie: 'assets/1.json' ,
                                      width: 64.0,
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    TextCustom(
                                      text: "Six Pack",
                                      color: Colors.white,
                                      size: 20.0,
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    TextCustom(
                                        text: "2 Items",
                                        color: Colors.white,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w100)
                                  ],
                                ),
                              )),
                            ),)
                          ),
                          SizedBox(
                            width: 160.0,
                            height: 160.0,
                            child: GestureDetector(
                            onTap: (){
                              Get.to(Details(Pages.HandMuscle));
                            }
                            ,child: Card(
                                color: Color.fromARGB(255, 21, 21, 21),
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      LottieCustom(
                                        lottie: 'assets/2.json' ,
                                        width: 64.0,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),

                                      TextCustom(
                                        text: "Hand Muscle",
                                        color: Colors.white,
                                        size: 20.0,
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      TextCustom(
                                          text: "12 Items",
                                          color: Colors.white,
                                          textAlign: TextAlign.center,
                                          fontWeight: FontWeight.w100)
                                    ],
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 160.0,
                            height: 160.0,
                            child: GestureDetector(
                              onTap: (){
                               Get.to(Details(Pages.LegMuscle));
                              },
                              child: Card(
                                color: Color.fromARGB(255, 21, 21, 21),
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      LottieCustom(
                                        lottie: 'assets/3.json' ,
                                        width: 64.0,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),

                                      TextCustom(
                                        text: "Leg Muscle",
                                        color: Colors.white,
                                        size: 20.0,
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      TextCustom(
                                          text: "4 Items",
                                          color: Colors.white,
                                          textAlign: TextAlign.center,
                                          fontWeight: FontWeight.w100)
                                    ],
                                  ),
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 160.0,
                            height: 160.0,
                            child: GestureDetector(
                            onTap: (){
                              Get.to(Details(Pages.ChestMuscle));
                            }
                            ,child: Card(
                                color: Color.fromARGB(255, 21, 21, 21),
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      LottieCustom(
                                        lottie: 'assets/4.json' ,
                                        width: 64.0,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),

                                      TextCustom(
                                        text: "Chest Muscle",
                                        color: Colors.white,
                                        size: 20.0,
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      TextCustom(
                                          text: "6 Items",
                                          color: Colors.white,
                                          textAlign: TextAlign.center,
                                          fontWeight: FontWeight.w100)
                                    ],
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
