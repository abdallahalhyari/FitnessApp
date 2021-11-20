import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LottieCustom extends StatelessWidget {
 String lottie;
 double width;

 LottieCustom({this.lottie, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Lottie.asset(
        lottie,
        width: width,
      ) ,
    );
  }
}
