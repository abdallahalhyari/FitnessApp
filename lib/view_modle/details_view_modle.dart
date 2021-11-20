import 'package:fitness_m/modle/details_modle.dart';
import 'package:fitness_m/utils/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DetailsViewModle extends GetxController {
  List lot_LegMuscle = ['assets/3.json', 'assets/3.1.json', 'assets/3.2.json','assets/3.3.json','assets/3.4.json','assets/3.5.json','assets/3.6.json','assets/3.7.json'];
  List lot_ChestMuscle = ['assets/4.json', 'assets/4.1.json', 'assets/4.2.json','assets/4.3.json'];
  List lot_HandMuscle = ['assets/2.json', 'assets/2.1.json', 'assets/2.2.json','assets/2.3.json','assets/2.4.json'];
  List lot_SixPack = ['assets/1.json', 'assets/1.1.json', 'assets/1.2.json'];
  Pages _namePage = Pages.ChestMuscle;

  DetailsViewModle(Pages pages) {
    _namePage = pages;
  }


  List<DetailsModle> get lott => _lott;

  List<DetailsModle> _lott = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    addExercise();
  }

  void control_play(int index) {
    if (_lott[index].loading == false) {
      offAll();
      _lott[index].loading = true;
      update();
    } else {
      _lott[index].loading = false;
      update();
    }
  }

  void addExercise() {
    List<DetailsViewModle> exserciselist =new List();
    if (_namePage == Pages.LegMuscle) {
      exserciselist=lot_LegMuscle;
      for (int i = 0; i < lot_LegMuscle.length; i++) {
        _lott.add(DetailsModle(false, lot_LegMuscle[i]));
      }
    } else if (_namePage == Pages.ChestMuscle) {
      for (int i = 0; i < lot_ChestMuscle.length; i++) {
        _lott.add(DetailsModle(false, lot_ChestMuscle[i]));
      }
    } else if (_namePage == Pages.HandMuscle) {
      for (int i = 0; i < lot_HandMuscle.length; i++) {
        _lott.add(DetailsModle(false, lot_HandMuscle[i]));
      }
    } else if (_namePage == Pages.SixPack) {
      for (int i = 0; i < lot_SixPack.length; i++) {
        _lott.add(DetailsModle(false, lot_SixPack[i]));
      }
    }
  }

  void offAll() {

    if (_namePage == Pages.LegMuscle) {
      for (int i = 0; i < lot_LegMuscle.length; i++) {
        _lott[i].loading = false;
      }
    } else if (_namePage == Pages.ChestMuscle) {
      for (int i = 0; i < lot_ChestMuscle.length; i++) {
        _lott[i].loading = false;
      }
    } else if (_namePage == Pages.HandMuscle) {
      for (int i = 0; i < lot_HandMuscle.length; i++) {
        _lott[i].loading = false;
      }
    } else if (_namePage == Pages.SixPack) {
      for (int i = 0; i < lot_SixPack.length; i++) {
        _lott[i].loading = false;
      }
    }


    update();
  }


}




