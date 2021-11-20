import 'package:fitness_m/utils/enum.dart';
import 'package:fitness_m/view_modle/details_view_modle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Details extends StatefulWidget {
  Pages pages;
  Details(Pages pages){
      this.pages=pages;
  }

  @override
  _DetailsState createState() => _DetailsState(pages);
}

class _DetailsState extends State<Details> {
  Pages pages;
  _DetailsState(Pages pages){
    this.pages=pages;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18.0,bottom: 18.0,top: 30.0),
        child: _listViewCategory(pages),
      ),
    );
  }

}

Widget _listViewCategory(Pages pages) {
  return GetBuilder<DetailsViewModle>(
    init: DetailsViewModle(pages),
    builder: (controller)=> Container(
      alignment: Alignment.center,
      child: ListView.separated(
            itemCount: controller.lott.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100,
                      border: Border(
                        top: BorderSide(
                            width: 4,
                            color: Colors.grey,
                            style: BorderStyle.solid), //BorderSide
                        bottom: BorderSide(
                            width: 4,
                            color: Colors.grey,
                            style: BorderStyle.solid), //BorderSide
                        left: BorderSide(
                            width: 4,
                            color: Colors.grey,
                            style: BorderStyle.solid), //Borderside
                        right: BorderSide(
                            width: 4,
                            color: Colors.grey,
                            style: BorderStyle.solid), //BorderSide
                      ),
                    ),
                    height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                         onTap: (){controller.control_play(index);} ,child:Lottie.asset(controller.lott[index].exercise,animate: controller.lott[index].loading,fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) =>
                SizedBox(
                  width: 20,
                ),
      ),
    ),
  );
}
